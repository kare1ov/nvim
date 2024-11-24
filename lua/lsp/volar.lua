local M = {}

function M.setup()
  require("lspconfig").volar.setup({
    filetypes = { "vue" },
  })
end

return M
