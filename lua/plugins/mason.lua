local mason = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  event = "BufReadPre",
  opts = {
    ui = {
      icons = {
        package_installed = "✓",
        package_pending = "➜",
        package_uninstalled = "✗",
      },
    },
  },
}

local mason_lspconfig = {
  "williamboman/mason-lspconfig.nvim",
  dependency = "williamboman/mason.nvim",
  opts = {
    ensure_installed = { "ruff", "clangd", "ts_ls", "volar", "cssls", "dockerls", "docker_compose_language_service" },
    automatic_installation = true,
  },
}

return {
  mason,
  mason_lspconfig,
}
