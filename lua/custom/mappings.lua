local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line",
    },
    ["<leader>dr"] = {
      "<cmd> DapContinue <CR>",
      "Start or continue the debugger",
    },
    -- ["<C-s>"] = { "<cmd>wa<cr>", "Save all files" },
  },
  i = {
    -- ["<C-s>"] = { "<esc><cmd>wa<cr>", "Save all files" }, -- Exit Insert mode first
  },
}
M.general = {
  n = {
    -- ["<C-s>"] = {
    --   function()
    --     vim.lsp.buf.format()       -- Format using LSP
    --     vim.cmd("w")              -- Save file
    --   end,
    --   "Save and format file",
    -- },
    ["<C-s>"] = { -- "Save All"
      function()
        vim.cmd("bufdo lua vim.lsp.buf.format()") -- Format all buffers
        vim.cmd("wa") -- Write all open files
      end,
      "Save and format all files",
    },
  },
  i = {
    -- ["<C-s>"] = {
    --   "<Esc><cmd>w<CR><cmd>lua vim.lsp.buf.format()<CR>a",
    --   "Save and format file (Insert mode)",
    -- },
  },
}

-- M.general = {
--   n = {
--     ["<C-s>"] = { "<cmd>wa<cr>", "Save all files" },
--   },
--   i = {
--     ["<C-s>"] = { "<esc><cmd>wa<cr>", "Save all files" }, -- Exit Insert mode first
--   },
-- }
return M
