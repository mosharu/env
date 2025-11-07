vim.cmd('source ~/.vimrc')

-- <https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#clangd>
vim.lsp.enable('clangd')

-- Python LSP設定
-- <https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#pyright>
vim.lsp.enable('pyright')

-- TypeScript / JavaScript LSP (typescript-language-server)
vim.lsp.enable('typescript-language-server')

-- LSP設定をカスタマイズ
vim.lsp.config.pyright = {
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        diagnosticMode = "workspace",
        useLibraryCodeForTypes = true,
        typeCheckingMode = "basic"
      }
    }
  }
}

-- TypeScript Language Server の設定
vim.lsp.config['typescript-language-server'] = {
  cmd = { 'typescript-language-server', '--stdio' },
  filetypes = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
  root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git' }
}

-- LSPキーマップ
vim.keymap.set('n', ',d', vim.lsp.buf.definition, { desc = 'Go to definition' })
vim.keymap.set('n', ',i', vim.lsp.buf.implementation, { desc = 'Go to implementation' })
vim.keymap.set('n', ',r', vim.lsp.buf.references, { desc = 'Show references' })
vim.keymap.set('n', ',v', vim.lsp.buf.hover, { desc = 'Show hover info' })
vim.keymap.set('n', ',rn', vim.lsp.buf.rename, { desc = 'Rename symbol' })
vim.keymap.set('n', ',ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', ',f', vim.lsp.buf.format, { desc = 'Format code' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Previous diagnostic' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Next diagnostic' })
vim.keymap.set('n', ',e', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })

-- 診断表示の設定
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'python' },
  highlight = { enable = false },
}
require'treesitter-context'.setup{
  enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
  multiwindow = false, -- Enable multiwindow support.
  max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
  min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
  line_numbers = true,
  multiline_threshold = 20, -- Maximum number of lines to show for a single context
  trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
  mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
  -- Separator between context and content. Should be a single character string, like '-'.
  -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
  separator = nil,
  zindex = 20, -- The Z-index of the context window
  on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
}
