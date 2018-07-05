# vimforlatex
My personalization of vim for mainly LaTeX.
Here uploaded are,
- My `.vimrc`;
- My keybindings, snippets and abbreviations for LaTeX;
- My templates for LaTeX;
- A folding method similar to  LaTeX-Suite (https://github.com/vim-scripts/LaTeX-Suite-aka-Vim-LaTeX), made by petobens (https://tex.stackexchange.com/a/130826/154271, https://github.com/petobens/dotfiles/blob/master/vim/ftplugin/tex/folding.vim).

# Guide:

Download `MahbubAlam231/vimforlatex` form https://github.com.

### For Ubuntu

- Put `.vimrc` in your home directory;
- Create `~/.vim/KeyBindings/TeXKeyBindings`, and put `TeXKeyBindings.vim`, `NumbersPeacefully.vim` and `UnmapTeXKeyBindings.vim` in that;
- Create `~/.vim/Abbreviations`, and put `GeneralAbbreviations.vim` and `MathAbbreviations.vim` in that;
- Create `~/.vim/Ultisnips`, and put `tex.snippets` in that;
- Download the `spell` folder, and put it in `~/.vim`;
- Install the plugin `LaTeX-Box` (https://github.com/LaTeX-Box-Team/LaTeX-Box), create `~/.vim/bundle/LaTeX-Box/ftplugin/tex`, and put `folding.vim` in that;
- Install the plugin `vim-templates` (https://github.com/tibabit/vim-templates), and put `amsart.template`, `article.template`, `report.template` and `tex.template` in `~/.vim/bundle/vim-templates/templates`;
- Create `~/.vim/bundle/dragvisuals/plugin`, and put `dragvisuals.vim` in that. You can also go to https://is.gd/IBV2013 or https://github.com/shinokada/dragvisuals.vim to get `dragvisuals.vim`.

### For macOS
- Put `.vimrc` in `/Users/(your_pc_name)`;
- Replace `~/.vim` by `/Users/(your_pc_name)/.vim` in the above instructions;
- There are some lines (after the 555th line) inside `.vimrc` file as well that contains `~/.vim`, make similar changes there as well;
- Create `~/.vim/bundle/dragvisuals/plugin`, and put `dragvisuals.vim` in that. You can also go to https://is.gd/IBV2013 or https://github.com/shinokada/dragvisuals.vim to get `dragvisuals.vim`;
- `folding.vim` might make your vim slower.
