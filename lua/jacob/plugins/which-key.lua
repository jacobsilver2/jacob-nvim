return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    defaults = {
      preset = "helix",
    },
    spec = {
      mode = { "n", "v" },
      { "<leader>c", group = "code" },
      { "<leader>e", group = "file explorer" },
      { "<leader>f", group = "find" },
      { "<leader>i", group = "inline toggle" },
      { "<leader>g", group = "git" },
      { "<leader>m", group = "format" },
      { "<leader>n", group = "clear search highlights" },
      { "<leader>r", group = "rename/LSP" },
      { "<leader>s", group = "split" },
      { "<leader>t", group = "tab" },
      { "<leader>w", group = "session" },
      { "<leader>x", group = "diagnostics" },
      {
        "<leader>b",
        group = "buffer",
        expand = function()
          return require("which-key.extras").expand.buf()
        end,
      },
    },
  },
}
