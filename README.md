# vimforlatex
My personalization of vim for mainly LaTeX

# Guide:

### For Ubuntu

- Put .vimrc in your home directory
- Create ~/.vim/KeyBindings/TeXKeyBindings, and put TeXKeyBindings.vim and NumbersPeacefully.vim in that
- Create ~/.vim/Abbreviations, and put GeneralAbbreviations.vim and MathAbbreviations.vim in that
- Create ~/.vim/Ultisnips, and put tex.snippets in that
- Download the spell folder, and put it in ~/.vim
- Install the plugin LaTeX-Box (https://github.com/LaTeX-Box-Team/LaTeX-Box), create ~/.vim/bundle/LaTeX-Box/ftplugin/tex, and put folding.vim in that
- Install the plugin vim-templates (https://github.com/tibabit/vim-templates), and put amsart.template, article.template and report.template in ~/.vim/bundle/vim-templates/templates

### For macOS
- Put .vimrc in /Users/(your_pc_name)
- Replace '~/.vim' by '/Users/(your_pc_name)/.vim' in the above instructions
- There are some lines (after the 547th line) inside .vimrc file as well that contains '~/.vim', make similar changes there as well.
- folding.vim might make your vim slower
