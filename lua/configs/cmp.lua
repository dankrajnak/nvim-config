local options = {
  enabled = function()
    -- disable completion in comments
    local context = require "cmp.config.context"
    -- keep command mode completion enabled when cursor is in a comment
    if vim.api.nvim_get_mode().mode == "c" then
      return true
    else
      return not context.in_treesitter_capture "comment" and not context.in_syntax_group "Comment"
    end
  end,
}

options = vim.tbl_deep_extend("force", options, require "nvchad.cmp")

return options
