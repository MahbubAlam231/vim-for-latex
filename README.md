# vimforlatex
My personalization of vim for mainly LaTeX.
Here uploaded are,
- My `.vimrc`;
- My keybindings, snippets and abbreviations for LaTeX;
  - KeyBindings for writing math sets, greek alphabets, math notations easily and fast;
  - Snippets for math sets, greek alphabets, math environments;
  - General word abbreviations (using [`tpope/vim-abolish`](https://github.com/tpope/vim-abolish)) and math abbreviations.
- My templates for LaTeX;
  - A universal type template (`tex.template`) for LaTeX.
- A folding method similar to  [`vim-latex/vim-latex`](https://github.com/vim-latex/vim-latex), made by petobens (see [here](https://tex.stackexchange.com/a/130826/154271) and [here](https://github.com/petobens/dotfiles/blob/master/vim/ftplugin/tex/folding.vim)).

# Guide:

Download [`MahbubAlam231/vimforlatex`](https://github.com/MahbubAlam231/vimforlatex) form GitHub.

### For Linux

- Put `.vimrc` in your home directory;
- Create `~/.vim/KeyBindings/TeXKeyBindings`, and put `TeXKeyBindings.vim`, `NumbersPeacefully.vim` and `UnmapTeXKeyBindings.vim` in that;
- Create `~/.vim/Abbreviations`, and put `GeneralAbbreviations.vim` and `MathAbbreviations.vim` in that;
- Create `~/.vim/Ultisnips`, and put `tex.snippets` in that;
- Download the `spell` folder, and put it in `~/.vim`;
- Install the plugin [`LaTeX-Box`](https://github.com/LaTeX-Box-Team/LaTeX-Box), create `~/.vim/bundle/LaTeX-Box/ftplugin/tex`, and put `folding.vim` in that;
- Install the plugin [`vim-templates`](https://github.com/tibabit/vim-templates), and put `amsart.template`, `article.template`, `report.template` and `tex.template` in `~/.vim/bundle/vim-templates/templates` and
- Create `~/.vim/bundle/dragvisuals/plugin`, and put `dragvisuals.vim` in that. You can also go [here](https://is.gd/IBV2013) or to GitHub repository [`shinokada/dragvisuals.vim`](https://github.com/shinokada/dragvisuals.vim) to get `dragvisuals.vim`.

### For macOS
- Put `.vimrc` in `/Users/(your_pc_name)`;
- Replace `~/.vim` by `/Users/(your_pc_name)/.vim` in the above instructions;
- There are some lines (after the 555th line) inside `.vimrc` file as well that contains `~/.vim`, make similar changes there as well;
- Create `/Users/(your_pc_name)/.vim/bundle/dragvisuals/plugin`, and put `dragvisuals.vim` in that. You can also go [here](https://is.gd/IBV2013) or to GitHub repository [`shinokada/dragvisuals.vim`](https://github.com/shinokada/dragvisuals.vim) to get `dragvisuals.vim` and
- `folding.vim` *might make your vim slower, you might not want to add this file to your system.*

Read `.vimrc`, `TeXKeyBindings.vim`, `NumbersPeacefully.vim`, `UnmapKeyBindings.vim`, `GeneralAbbreviations.vim`, `MathAbbreviations.vim` and `tex.snippets`.
For any query in vimscripts go to `:help` from inside vim, you can also look at the book [_Learn Vimscripts the Hard Way_](http://learnvimscriptthehardway.stevelosh.com/) by [_Steve Losh_](http://stevelosh.com/).
