# vim-for-latex

My personalization of vim for mainly LaTeX.
Here uploaded are,
- My `.vimrc`;
- My keybindings, snippets and abbreviations for LaTeX;
  - KeyBindings for writing math sets, greek alphabets, math notations easily and fast;
  - Snippets for math sets, greek alphabets, math environments;
  - General word abbreviations (using [`tpope/vim-abolish`](https://github.com/tpope/vim-abolish)) and math abbreviations.
- My templates for LaTeX;
  - A 'universal' latex template (`tex.template`).
- A folding method similar to  [`vim-latex/vim-latex`](https://github.com/vim-latex/vim-latex), made by petobens (see [here](https://tex.stackexchange.com/a/130826/154271) and [here](https://github.com/petobens/dotfiles/blob/master/vim/ftplugin/tex/folding.vim)).

## Guide to install VIM and [`vim-for-latex`](https://github.com/MahbubAlam231/vim-for-latex)

Download [`MahbubAlam231/vim-for-latex`](https://github.com/MahbubAlam231/vim-for-latex) form GitHub.

You should consider swapping `escape` and `caps` key on your device, it makes it more convenient to press `escape` key.
For Linux this you can do this by adding the line `setxkbmap -option "caps:swapescape"` at the end of your `.bashrc`, this will swap `escape` and `caps` key every time you open VIM.
To make this change permanent you can put the same line at the end of your `~/.profile` file, this will swap `escape` and `caps` key every time you turn on your computer.

#### For Linux

- Install VIM from command line using `sudo apt install vim`;
- Install [Vundle](https://github.com/VundleVim/Vundle.vim) following installation guide; first install `git` from command line using `sudo apt install git`, then run `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`;
- Put `.vimrc` in your home directory;
- Install the fuzzyfinder [`junegunn/fzf`](https://github.com/junegunn/fzf#upgrading-fzf) using `git`, i.e., run `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf` and then `~/.fzf/install` from terminal (enable auto-completion and key bindings, and update shell configuration files while running `~/.fzf/install`), and add the line `export FZF_DEFAULT_OPS="--extended"` at the end of your `.bashrc`;
- Put `Abbreviations`, `KeyBindings`, `spell` and `UltiSnips` in `~/.vim`;
- Open `.vimrc` using `VIM` (it might throw some errors, but enter anyway), and run `PluginInstall`;
- Create `~/.vim/bundle/LaTeX-Box/ftplugin/tex`, and put `folding.vim` in that and
- Put `amsart.template`, `article.template`, `report.template` and `tex.template` in `~/.vim/bundle/vim-templates/templates`.

#### For macOS (not very sure about it btw)

- Install VIM using `homebrew`;
- Install [Vundle](https://github.com/VundleVim/Vundle.vim) following installation guide;
- Put `.vimrc` in `/Users/(your_pc_name)`;
- Install the fuzzyfinder [`junegunn/fzf`](https://github.com/junegunn/fzf#upgrading-fzf) using `git` as in the above instructions for Linux, and add the line `export FZF_DEFAULT_OPS="--extended"` at the end of your `.bashrc` or `zshrc`;
- Replace `~/.vim` by `/Users/(your_pc_name)/.vim` in the above instructions for Linux;
- There are some lines (after the 530th line) inside `.vimrc` file as well that contains `~/.vim`, make similar changes there as well and
- `folding.vim` _might make your vim slower, you might not want to add this file to your system._

## Learning the mappings

Read `.vimrc`, `TeXKeyBindings.vim`, `NumbersPeacefully.vim`, `UnmapKeyBindings.vim`, `GeneralAbbreviations.vim`, `MathAbbreviations.vim` and `tex.snippets` to learn about the mappings.
`NumbersPeacefully.vim` and `UnmapKeyBindings.vim` are there to disable certain parts of `TeXKeyBindings.vim`.

The mappings are designed to be easy to remember, just like vim commands.
As you go over the mappings I hope you will find these are time-saving and easy-to-perform mappings.

These mappings simplify writing not only `.tex` files, but also many other types of files as well.

For basic vim tips you can watch the following videos-
- [Vim Navigation Commands](https://www.youtube.com/watch?v=Qem8cpbJeYc&list=PLbG6BEIoK7v3L1mEewGrVnTV7arJDOWGj&index=7&t=0s)
- [Mastering the Vim Language](https://www.youtube.com/watch?v=wlR5gYd6um0&list=PLbG6BEIoK7v3L1mEewGrVnTV7arJDOWGj&index=4&t=0s)
- [Improving Vim Speed](https://www.youtube.com/watch?v=OnUiHLYZgaA&list=PLbG6BEIoK7v3L1mEewGrVnTV7arJDOWGj&index=13&t=0s)
- [Your First Vim Plugin](https://www.youtube.com/watch?v=lwD8G1P52Sk&list=PLbG6BEIoK7v3L1mEewGrVnTV7arJDOWGj&index=3&t=0s)

For any query about vimscripts go to `:help` from inside vim, you can also look at the book [_Learn Vimscripts the Hard Way_](http://learnvimscriptthehardway.stevelosh.com/) by [_Steve Losh_](http://stevelosh.com/).

