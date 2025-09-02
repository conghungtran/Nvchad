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
    ["<C-s"] = {
      function()
        vim.lsp.buf.format()       -- Format using LSP
        vim.cmd("wa")              -- Save file
      end,
      "Save and format  all files",
    },
    -- ["<C-s>"] = { -- "Save All"
    --   function()
    --     vim.cmd("bufdo lua vim.lsp.buf.format()") -- Format all buffers
    --     vim.cmd("wa") -- Write all open files
    --   end,
    --   "Save and format all files",
    -- },
  },
  i = {
    -- ["<C-s>"] = {
    --   "<Esc><cmd>w<CR><cmd>lua vim.lsp.buf.format()<CR>a",
    --   "Save and format file (Insert mode)",
    -- },
  },
}

M.custom_mappings = {
  n = {
    -- Surround mappings
    ["<leader>s"] = { name = "Surround", "Surround operations" },
    ["<leader>s\""] = { 'cs"<', "Change quotes to angle brackets" },
    ["<leader>s'"] = { "cs'<", "Change single quotes to angle brackets" },
    ["<leader>sd"] = { 'ds"', "Delete quotes around text" },
    
    -- Các phím tắt surround khác - THÊM HÀNH ĐỘNG VÀO ĐÂY
    ["<leader>sw"] = { "ysiw", "Surround word", remap = true },
    ["<leader>sl"] = { "yss", "Surround line", remap = true },
    
    -- Mapping mẫu với hàm Lua (nếu cần)
    ["<leader>st"] = {
      function()
        vim.notify("Surround test activated!")
      end,
      "Test surround functionality"
    },
  },
  v = {
    ["<leader>s"] = { "S", "Surround selection", remap = true },
  }
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
