# vim-for-latex

My personalization of vim for mainly LaTeX.
Here uploaded are,
- My `.vimrc`;
- My keybindings, snippets and abbreviations for LaTeX;
  - KeyBindings for writing math sets, Greek alphabets, math notations easily and fast;
  - Snippets for math sets, Greek alphabets, math environments;
  - General word abbreviations (using
  [`tpope/vim-abolish`](https://github.com/tpope/vim-abolish)) and math abbreviations.
- My templates for LaTeX;
  - A 'universal' latex template (`tex.template`).
- A folding technique which is a mixture of [LaTeX-Suite](https://github.com/vim-latex/vim-latex),
[Latex-Box](https://github.com/LaTeX-Box-Team/LaTeX-Box) and
[vimtex](https://github.com/lervag/vimtex) folding method.
This a modification of [petobens](https://tex.stackexchange.com/users/9953/petobens)
folding technique which can be found
[here](https://github.com/petobens/dotfiles/blob/master/vim/ftplugin/tex/folding.vim)
and [here](https://tex.stackexchange.com/questions/130586/vim-nice-folding-function).
This folding technique uses `foldmethod=marker` and `foldmarker=F{O{L{D,F}O}L}D`.

## Guide to install VIM and vim-for-latex

Download `MahbubAlam231/vim-for-latex` form GitHub.

You should consider swapping `escape` and `caps` key on your device, it makes
it more convenient to press `escape` key.
For Linux you can do this from system settings or by adding the line `setxkbmap -option
"caps:swapescape"` at the end of your `.bashrc`, this will swap `escape` and
`caps` key on your computer once you open VIM.
To make this change permanent you can put the same line at the end of your
`~/.profile` file, this will swap `escape` and `caps` key every time you turn
on your computer.

#### For Linux

- Install VIM from command line using `sudo apt install vim-gtk3`;
- Install [vim-plug](https://github.com/junegunn/vim-plug) following installation guide;
- Put `.vimrc` in your home directory;
- Put `Abbreviations`, `after`, `KeyBindings`, `spell` and `UltiSnips` in `~/.vim`;
- Open `.vimrc` using `VIM` (it might throw some errors, but enter anyway), and run `:PlugInstall`;
- Put `LaTeX/templates` in `~/.vim/bundle/vim-templates/`;
- Put `LaTeX/tex` in `~/.vim/plugged/vimtex/ftplugin/`.

#### For macOS (not very sure about it btw)

- Install VIM using `homebrew`;
- Install [vim-plug](https://github.com/junegunn/vim-plug) (or [Vundle](https://github.com/VundleVim/Vundle.vim)) following installation guide;
- Put `.vimrc` in `/Users/(your_pc_name)`;
- Replace `~/.vim` by `/Users/(your_pc_name)/.vim` in the above instructions for Linux;
- There are some lines (after the 530th line) inside `.vimrc` file as well that contains `~/.vim`,
make similar changes there as well.

## Learning the mappings

Read `.vimrc`, `TeXKeyBindings.vim`, `NumbersPeacefully.vim`, `UnmapKeyBindings.vim`,
`GeneralAbbreviations.vim`, `MathAbbreviations.vim` and `tex.snippets` to learn about the mappings.
`NumbersPeacefully.vim` and `UnmapKeyBindings.vim` are there to disable certain parts of `TeXKeyBindings.vim`.

The mappings are designed to be easy to remember, just like vim commands.
As you go over these mappings I hope you will find that these are time-saving and easy-to-perform mappings.

For me these mappings simplify writing `.tex` files, and also many other types of files as well.

For basic vim tips you can watch the following videos-
- [Vim Navigation Commands](https://www.youtube.com/watch?v=Qem8cpbJeYc)
- [Improving Vim Speed](https://www.youtube.com/watch?v=OnUiHLYZgaA)
- [Mastering the Vim Language](https://www.youtube.com/watch?v=wlR5gYd6um0)
- [Your First Vim Plugin](https://www.youtube.com/watch?v=lwD8G1P52Sk)

For any query about vimscripts go to `:help` from inside vim.
You can also look at the book [_Learn Vimscripts the Hard Way_](http://learnvimscriptthehardway.stevelosh.com/)
by [_Steve Losh_](http://stevelosh.com/).

