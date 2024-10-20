# -------------------------------------------------------------------
# Author(s)   : Mahbub Alam
# File        : my_snippets_helpers.py
# Created     : 10/10/2024 (Oct, Thu) 17:42:56 CEST
# Description :
# -------------------------------------------------------------------

# Common functions, from honza/vim-snippets (python.snippets){{{

# The smart def and smart class snippets use a global option called
# "g:ultisnips_python_style" which, if set to "doxygen" will use doxygen
# style comments in docstrings.

NORMAL  = 0x1
DOXYGEN = 0x2
SPHINX  = 0x3
GOOGLE  = 0x4
NUMPY   = 0x5
JEDI    = 0x6

SINGLE_QUOTES = "'"
DOUBLE_QUOTES = '"'


class Arg(object):
	def __init__(self, arg):
		self.arg = arg
		name_and_type = arg.split('=')[0].split(':')
		self.name = name_and_type[0].strip()
		self.type = name_and_type[1].strip() if len(name_and_type) == 2 else None

	def __str__(self):
		return self.name

	def __unicode__(self):
		return self.name

	def is_kwarg(self):
		return '=' in self.arg

	def is_vararg(self):
		return '*' in self.name


def get_args(arglist):
	args = []
	n = len(arglist)
	i = 0
	while i < n:
		l_bracket = 0
		start = i
		while i < n and (l_bracket > 0 or arglist[i] != ','):
			if arglist[i] == '[':
				l_bracket += 1
			elif arglist[i] == ']' and l_bracket > 0:
				l_bracket -= 1
			i += 1
		arg = arglist[start:i]
		if arg:
			args.append(Arg(arg))
		i += 1

	args = [arg for arg in args if arg.name != 'self']

	return args


def get_quoting_style(snip):
	style = snip.opt("g:ultisnips_python_quoting_style", "double")
	if style == 'single':
		return SINGLE_QUOTES
	return DOUBLE_QUOTES

def triple_quotes(snip):
	style = snip.opt("g:ultisnips_python_triple_quoting_style")
	if not style:
		return get_quoting_style(snip) * 3
	return (SINGLE_QUOTES if style == 'single' else DOUBLE_QUOTES) * 3

def triple_quotes_handle_trailing(snip, quoting_style):
	"""
	Generate triple quoted strings and handle any trailing quote char,
	which might be there from some autoclose/autopair plugin,
	i.e. when expanding ``"|"``.
	"""
	if not snip.c:
		# Do this only once, otherwise the following error would happen:
		# RuntimeError: The snippets content did not converge: …
		row, col = vim.current.window.cursor

		# before ultisnip expansion, chars ahead cursor is at row - 1, col
		# after ultisnip expansion, they are pushed to row + 1, col - 1
		# when this function is run, it's already after ultisni expansion
		line = snip.buffer[row + 1]

		# Handle already existing quote chars after the trigger.
		_ret = quoting_style * 3
		while True:
			try:
				nextc = line[col - 1]
			except IndexError:
				break
			if nextc == quoting_style and len(_ret):
				_ret = _ret[1:]
				col = col+1
			else:
				break
		snip.rv = _ret
	else:
		snip.rv = snip.c

def get_style(snip):
	style = snip.opt("g:ultisnips_python_style", "normal")

	if    style == "doxygen": return DOXYGEN
	elif  style == "sphinx": return SPHINX
	elif  style == "google": return GOOGLE
	elif  style == "numpy": return NUMPY
	elif  style == "jedi": return JEDI
	else: return NORMAL


def format_arg(arg, style):
	if style == DOXYGEN:
		return "@param %s TODO" % arg
	elif style == SPHINX:
		return ":param %s: TODO" % arg
	elif style == NORMAL:
		return ":%s: TODO" % arg
	elif style == GOOGLE:
		return "%s (%s): TODO" % (arg, arg.type or "TODO")
	elif style == JEDI:
		return ":type %s: TODO" % arg
	elif style == NUMPY:
		return "%s : TODO" % arg


def format_return(style):
	if style == DOXYGEN:
		return "@return: TODO"
	elif style in (NORMAL, SPHINX, JEDI):
		return ":returns: TODO"
	elif style == GOOGLE:
		return "Returns: TODO"


def write_docstring_args(args, snip):
	if not args:
		snip.rv += ' {0}'.format(triple_quotes(snip))
		return

	snip.rv += '\n' + snip.mkline('', indent='')

	style = get_style(snip)

	if style == GOOGLE:
		write_google_docstring_args(args, snip)
	elif style == NUMPY:
		write_numpy_docstring_args(args, snip)
	else:
		for arg in args:
			snip += format_arg(arg, style)


def write_google_docstring_args(args, snip):
	kwargs = [arg for arg in args if arg.is_kwarg()]
	args = [arg for arg in args if not arg.is_kwarg()]

	if args:
		snip += "Args:"
		snip.shift()
		for arg in args:
			snip += format_arg(arg, GOOGLE)
		snip.unshift()
		snip.rv += '\n' + snip.mkline('', indent='')

	if kwargs:
		snip += "Kwargs:"
		snip.shift()
		for kwarg in kwargs:
			snip += format_arg(kwarg, GOOGLE)
		snip.unshift()
		snip.rv += '\n' + snip.mkline('', indent='')


def write_numpy_docstring_args(args, snip):
	if args:
		snip += "Parameters"
		snip += "----------"

	kwargs = [arg for arg in args if arg.is_kwarg()]
	args = [arg for arg in args if not arg.is_kwarg()]

	if args:
		for arg in args:
			snip += format_arg(arg, NUMPY)
	if kwargs:
		for kwarg in kwargs:
			snip += format_arg(kwarg, NUMPY) + ', optional'
	snip.rv += '\n' + snip.mkline('', indent='')


def write_init_body(args, parents, snip):
	parents = [p.strip() for p in parents.split(",")]
	parents = [p for p in parents if p != 'object']

	for p in parents:
		snip += p + ".__init__(self)"

	if parents:
		snip.rv += '\n' + snip.mkline('', indent='')

	for arg in filter(lambda arg: not arg.is_vararg(), args):
		snip += "self._%s = %s" % (arg, arg)


def write_slots_args(args, snip):
	quote = get_quoting_style(snip)
	arg_format = quote + '_%s' + quote
	args = [arg_format % arg for arg in args]
	snip += '__slots__ = (%s,)' % ', '.join(args)


def write_function_docstring(t, snip):
	"""
	Writes a function docstring with the current style.

	:param t: The values of the placeholders
	:param snip: UltiSnips.TextObjects.SnippetUtil object instance
	"""
	snip.rv = ""
	snip >> 1

	args = get_args(t[2])
	if args:
		write_docstring_args(args, snip)

	style = get_style(snip)

	if style == NUMPY:
		snip += 'Returns'
		snip += '-------'
		snip += 'TODO'
	else:
		snip += format_return(style)
	snip.rv += '\n' + snip.mkline('', indent='')
	snip += triple_quotes(snip)

def get_dir_and_file_name(snip):
	return os.getcwd().split(os.sep)[-1] + '.' + snip.basename

# }}}

# My functions

def strip_end_digits(string, symbols):# {{{
    """
    Given a string, first strip the symbols from right
    Then the digits from right
    Return the remaining string and the digits
    """
    try:
        while string[-1] in symbols:
            string = string[:-1]
    except:
        pass

    end_digit = ''
    try:
        # When string is non-empty
        while string[-1].isdigit():
            end_digit = string[-1] + end_digit
            string = string[:-1]
    except:
        pass

    return string, end_digit
# }}}

# A dictionary of the extensions separated at the first character
extDict = {
    't' : 'xt', # txt
    'c' : 'sv', # csv
    'p' : 'y'   # py
}

def return_ext(ext_initial):
    try:
        return extDict[ext_initial]
    except:
        return ""

# completesDict = {
#     'thm' : 'theorem'
# }

def complete(t, opts, beginswith=[]):# {{{
    """
    t is a string
    opts is a list of strings
    beginswith is a list of strings
    """
    b, u = "", t
    for x in beginswith:
        if t.startswith(x):
            b = x
            u = t[len(x):]
            break

    if b or u:
        opts = [m[len(u):] for m in opts if m.startswith(u)]
    if len(opts) == 1:
        return opts[0]
    if opts == []:
        return ""
    return '(' + '|'.join(opts) + ')'

    # if b:
    #     return '(' + '|'.join(opts) + ')'
    # if not b and not u:
    #     return '(' + '|'.join(beginswith) + ')' + '(' + '|'.join(opts) + ')'
# }}}

def store_snip_rv(arg1, arg2):# {{{
    """
    arg1: iterable to write
    arg2: fileopen mode
    """
    with open('/home/mahbub/snip_rv', arg2) as f:
        for arg in arg1:
            if type(arg) == str:
                f.write(arg + '\n')
            else:
                f.write(str(arg) + '\n')
# }}}

def retrieve_snip_rv(line_nums=[]):# {{{
    """get last snip.rv (from the running snippet)

    :span: line_nums, all lines if line_nums = []
    :returns: last snip.rv, as a string if len(line_nums) == 1,
    else as a list

    """
    with open('/home/mahbub/snip_rv', 'r') as f:
        data = f.readlines()

    if line_nums:
        lines = []
        for i in line_nums:
            lines.append(data[i].strip())
    else:
        lines = [line.strip() for line in data]

    if len(lines) == 1:
        return lines[0]
    return lines

# }}}
