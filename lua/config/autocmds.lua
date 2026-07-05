vim.api.nvim_create_user_command("Gskel", function()
  -- Read the skeleton file
  vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/skeletons/skeleton.go"))

  -- Clean up trailing empty lines using the API
  local last_line = vim.api.nvim_buf_get_lines(0, -2, -1, false)[1]
  if last_line == "" then
    vim.api.nvim_buf_set_lines(0, -2, -1, false, {})
  end
end, {})

-- Create the :Skel user command
vim.api.nvim_create_user_command("Skel", function()
  -- Read the skeleton file into the current buffer
  vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/skeletons/skeleton.cpp"))
  -- Delete the extra trailing newline at the bottom
  vim.cmd("$delete")
end, {})

-- Auto-load C++ Skeleton
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.cpp",
  callback = function()
    -- Read the skeleton file into the current buffer
    vim.cmd("0r " .. vim.fn.expand("~/.config/nvim/skeletons/skeleton.cpp"))
    -- Delete the empty line that gets inserted at the very top (optional)
    vim.cmd("$delete")
  end,
})
-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
