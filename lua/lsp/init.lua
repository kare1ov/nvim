local languages = { "ts_ls", "volar" }

for _, lang in ipairs(languages) do
  local ok, module = pcall(require, "lsp." .. lang)
  if ok then
    module.setup()
  else
    vim.notify("Failed to load LSP for " .. lang, vim.log.levels.ERROR)
  end
end
