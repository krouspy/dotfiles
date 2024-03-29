vim.cmd [[autocmd FileType javascript,javascriptreact,typescript,typescriptreact,graphql,lua,json,html,markdown,css setlocal ts=2 sts=2 sw=2]]
vim.cmd [[autocmd FileType solidity,rust,cairo setlocal ts=4 sts=4 sw=4]]

-- javascript
vim.cmd [[autocmd FileType javascript nnoremap <leader>[ :!node %<cr>]]
-- typescript
vim.cmd [[autocmd FileType typescript nnoremap <leader>[ :!yarn dev<cr>]]
-- rust
vim.cmd [[autocmd FileType rust nnoremap <leader>[ :!cargo build<cr>]]
vim.cmd [[autocmd FileType rust nnoremap <leader>] :!cargo run<cr>]]
vim.cmd [[autocmd FileType rust nnoremap <leader>\ :!cargo test<cr>]]
-- solidity
vim.cmd [[autocmd FileType solidity nnoremap <leader>[ :!forge build<cr>]]
vim.cmd [[autocmd FileType solidity nnoremap <leader>] :!forge clean && forge test<cr>]]
--cairo
vim.cmd [[autocmd FileType cairo nnoremap <leader>[ :!nile compile<cr>]]
vim.cmd [[autocmd FileType cairo nnoremap <leader>] :!nile test<cr>]]
