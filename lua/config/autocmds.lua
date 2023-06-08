-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--

-- disable all autoformatting
-- vim.api.nvim_create_autocmd({ "FileType" }, {
--   pattern = { "*" },
--   callback = function()
--     vim.b.autoformat = false
--   end,
-- })

local function is_filetype(filetype)
  return vim.bo.filetype == filetype
end

local function set_commentstring()
  if is_filetype("nix") then
    vim.bo.commentstring = "# %s"
  end
end

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = { "*" },
  callback = function()
    set_commentstring()
  end,
})
