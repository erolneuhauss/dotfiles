" source code linter
" https://github.com/dense-analysis/ale
let g:ale_fixers = {
\    'python': [
\        'black',
\        'isort',
\        'trim_whitespace',
\        'remove_trailing_lines'
\        ],
\    'json': [
\        'fixjson',
\        'trim_whitespace',
\        'remove_trailing_lines'
\        ]
\    }
let g:ale_linters = {
\    'python': [
\        'flake8',
\        'pylint'
\       ],
\    'json': [
\        'jsonlint'
\        ]
\    }
let g:ale_fix_on_save = 1
