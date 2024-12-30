local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    rust = { "rustfmt" },
    python = { "ruff_organize_imports", "ruff_fix", "ruff_format" },
    css = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
    javascript = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
    html = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
    typescript = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
    typescriptreact = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
    markdown = function()
      if vim.fn.filereadable "deno.json" == 1 or vim.fn.filereadable "deno.jsonc" == 1 then
        return { "deno_fmt" }
      end
      return { "prettier" }
    end,
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1000,
    lsp_fallback = false,
  },
}

return options
