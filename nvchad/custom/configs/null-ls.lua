local present, null_ls = pcall(require, "null-ls")

if not present then
	return
end
local b = null_ls.builtins

local sources = {

	b.formatting.prettierd.with({ filetypes = { "html", "markdown", "css" } }),
	b.formatting.deno_fmt,

	-- Lua
	b.formatting.stylua,

	-- Shell
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({ diagnostics_format = "#{m} [#{c}]" }),

	-- Python
	b.formatting.black,

	-- Django/Jinja
	b.formatting.djhtml,

	-- CPP
	b.formatting.clang_format,

	-- Vale
	b.diagnostics.vale,
}

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	debug = true,
	sources = sources,

	-- format on save
  on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePre", {
              group = augroup,
              buffer = bufnr,
              callback = function()
                  -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                  vim.lsp.buf.format(nil, 2000)
              end,
          })
      end
  end,
})
