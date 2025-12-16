vim.keymap.set("n", "<leader>ww", function()
  local new = not vim.opt.wrap:get()
  vim.opt.wrap = new
  vim.opt.linebreak = new
end, { desc = "Toggle word wrap + linebreak" })

-- keymaps voor UI
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>",   
{desc = "open Nvim Tree"})


-- keymaps for fuzzy find
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Telescope core pickers
keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', opts)
keymap('n', '<leader>fh', '<cmd>Telescope help_tags<CR>', opts)

-- Extra useful pickers
keymap('n', '<leader>fr', '<cmd>Telescope oldfiles<CR>', opts)
keymap('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<CR>', opts)

-- Git
keymap('n', '<leader>gf', '<cmd>Telescope git_files<CR>', opts)
keymap('n', '<leader>gs', '<cmd>Telescope git_status<CR>', opts)
keymap('n', '<leader>gb', '<cmd>Telescope git_branches<CR>', opts)

-- LSP pickers
keymap('n', '<leader>ls', '<cmd>Telescope lsp_document_symbols<CR>', opts)
keymap('n', '<leader>lw', '<cmd>Telescope lsp_dynamic_workspace_symbols<CR>', opts)
keymap('n', '<leader>ld', '<cmd>Telescope diagnostics<CR>', opts)

