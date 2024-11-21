local servers = {
  "python",
  "ts",
  "js",
  "vue",
}

for _, lang in ipairs(servers) do
  local ok, server = pcall(require, "lsp." .. lang)
  if ok then
    servers.setup()
  else
    vim.notify("Failed to setup lsp server for " .. lang, vim.log.levels.ERROR)
  end
end
