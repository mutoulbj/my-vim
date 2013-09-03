" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on
set nu

" disable pylint checking every save
let g:pymode_lint_write = 0

" set key 'R' for run python code
let g:pymode_run_key = 'R'

" load the whole plugin
let g:pymode = 1

" load show documentation plugin
let g:pymode_doc = 1

" key for show python documentation
let g:pymode_doc_key = "K"

" load run code plugin
let g:pymode_run = 1

" key for run python code
let g:pymode_run_key = "<leader>r"

" load pylint code plugin
let g:pymode_lint = 1

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" " Can have multiply values "pep8,pyflakes,mcccabe"
" " Choices are pyflakes, pep8, mccabe, pylint, pep257
 let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

" " Skip errors and warnings
" " E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and
" etc
 let g:pymode_lint_ignore = "E501"

" " Select errors and warnings
" " E.g. "E4,W"
 let g:pymode_lint_select = ""

" " Run linter on the fly
 let g:pymode_lint_onfly = 0

" Pylint configuration file
" " If file not found use 'pylintrc' from python-mode plugin directory
 let g:pymode_lint_config = "$HOME/.pylintrc"

" Check code every save
let g:pymode_lint_write = 1

" Auto open cwindow if errors were found
let g:pymode_lint_cwindow = 1

" Show error message if cursor placed at the error line
let g:pymode_lint_message = 1

" Auto jump on first error
let g:pymode_lint_jump = 0

" Hold cursor in current window
" when quickfix is open
let g:pymode_lint_hold = 0

" Place error signs
let g:pymode_lint_signs = 1

" Maximum allowed mccabe complexity
let g:pymode_lint_mccabe_complexity = 8

" Minimal height of pylint error window
let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
let g:pymode_lint_maxheight = 6

" enable python folding
let g:pymode_folding = 1

" enable python objects and motion
let g:pymode_motion = 1

" auto fix vim python path if virtualenv enabled
let g:pymode_virtualenv = 1
