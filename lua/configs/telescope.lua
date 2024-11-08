local present, telescope = pcall(require, "telescope")
if present then
  local options = {
    defaults = {
      file_ignore_patterns = { "node_modules", ".git", "build", "dist" },
      -- Additional custom configurations here
    },
  }
  telescope.setup(vim.tbl_deep_extend("force", {}, options))
  require("telescope").load_extension "git_file_history"
end

