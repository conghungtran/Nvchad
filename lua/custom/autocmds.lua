vim.api.nvim_create_autocmd("FileType", {
  group = augroup,
  pattern = { "c", "cpp" }, -- The file types to target
  callback = function()
    -- This disables cmp for the current buffer
    require("cmp").setup.buffer { enabled = false }
    -- vim.notify("nvim-cmp has been disabled for this C/C++ buffer.", vim.log.levels.INFO)
  end,
  desc = "Disable completions for C/C++",
})
