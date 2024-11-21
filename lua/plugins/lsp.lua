return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        ruff_lsp = {},
        volar = {
          settings = {
            filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
          },
        },
        ts_ls = {
          settings = {
            init_options = {
              plugins = {
                {
                  name = "@vue/typescript-plugin",
                  location = "/usr/local/lib/node_modules/@vue/typescript-plugin",
                  languages = { "javascript", "typescript", "vue" },
                },
              },
            },
            filetypes = {
              "javascript",
              "typescript",
              "vue",
            },
          },
        },
      },
      setup = {
        ts_ls = function(_, opts)
          require("lspconfig").volar.setup({})
        end,
      },
    },
  },
}
