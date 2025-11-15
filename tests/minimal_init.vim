" Minimal init for plenary.nvim tests
" Loaded with: nvim --headless -u tests/minimal_init.vim
" Note: Use XDG_CONFIG_HOME=/tmp to avoid loading user config

" Add current plugin to runtimepath
set rtp+=.

" Add plenary.nvim to runtimepath (try multiple common locations)
set rtp+=~/.local/share/nvim/site/pack/vendor/start/plenary.nvim
set rtp+=~/.local/share/nvim/lazy/plenary.nvim

" Load plenary plugin
runtime! plugin/plenary.vim

" Setup Lua package path to find plugin modules
lua <<EOF
package.path = "./lua/?.lua;./lua/?/init.lua;" .. package.path
EOF
