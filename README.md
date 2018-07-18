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

## Guide to install VIM and [`MahbubAlam231/vim-for-latex`](https://github.com/MahbubAlam231/vim-for-latex):

Download [`MahbubAlam231/vim-for-latex`](https://github.com/MahbubAlam231/vim-for-latex) form GitHub.

#### For Linux

- Install [Vundle](https://github.com/VundleVim/Vundle.vim) following installation guide;
- Put `.vimrc` in your home directory;
- Create `~/.vim/KeyBindings/TeXKeyBindings`, and put `TeXKeyBindings.vim`, `NumbersPeacefully.vim` and `UnmapTeXKeyBindings.vim` in that;
- Create `~/.vim/Abbreviations`, and put `GeneralAbbreviations.vim` and `MathAbbreviations.vim` in that;
- Create `~/.vim/UltiSnips`, and put `tex.snippets` in that;
- Download the `spell` folder, and put it in `~/.vim`;
- Open `.vimrc` using `VIM` (it might throw some errors, but enter anyway), and run `PluginInstall`;
- Create `~/.vim/bundle/LaTeX-Box/ftplugin/tex`, and put `folding.vim` in that and
- Put `amsart.template`, `article.template`, `report.template` and `tex.template` in `~/.vim/bundle/vim-templates/templates`.

#### For macOS

- Install [Vundle](https://github.com/VundleVim/Vundle.vim);
- Put `.vimrc` in `/Users/(your_pc_name)`;
- Replace `~/.vim` by `/Users/(your_pc_name)/.vim` in the above instructions;
- There are some lines (after the 530th line) inside `.vimrc` file as well that contains `~/.vim`, make similar changes there as well and
- `folding.vim` _might make your vim slower, you might not want to add this file to your system._

Read `.vimrc`, `TeXKeyBindings.vim`, `NumbersPeacefully.vim`, `UnmapKeyBindings.vim`, `GeneralAbbreviations.vim`, `MathAbbreviations.vim` and `tex.snippets` to learn about the mappings.
The mappings are designed to be easy to remember just like vim commands.
For any query about vimscripts go to `:help` from inside vim, you can also look at the book [_Learn Vimscripts the Hard Way_](http://learnvimscriptthehardway.stevelosh.com/) by [_Steve Losh_](http://stevelosh.com/).
