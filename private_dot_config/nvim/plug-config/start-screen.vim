let g:startify_enable_special = 0
let g:startify_fortune_use_unicode = 1

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'f': '~/git/fortunes/erol' },
            \ { 'a': '~/.config/nvim/plug-config/ale.vim' },
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'p': '~/.config/nvim/plugs/plugins.vim' },
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim' },
            \ { 'u': '~/.config/nvim/plug-config/fugitive.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/git/studies/kubernetes/ckad',
            \ '~/git/private/raspberry-pi/raspberry-pi-dramble',
            \ '~/git/private/fleet-infra/k8s-rpi-cluster',
            \ ]

