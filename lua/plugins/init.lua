return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "typescript",
        "tsx",
        "markdown",
        "markdown_inline",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    lazy = false,
    config = function()
      require("nvim-treesitter.configs").setup {
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ["af"] = "@function.outer", -- Select around function (includes function signature)
              ["if"] = "@function.inner", -- Select inside function (excludes function signature)
              ["ia"] = "@assignment.rhs", -- Select inside function (excludes function signature)
              ["aa"] = "@assignment.outer", -- Select inside function (excludes function signature)
              ["ab"] = "@block.outer", -- Select inside function (excludes function signature)
              ["ib"] = "@block.inner", -- Select inside function (excludes function signature)
              ["ap"] = "@parameter.outer", -- Select inside function (excludes function signature)
              ["ip"] = "@parameter.inner", -- Select inside function (excludes function signature)
            },
          },
        },
      }
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    lazy = false,
    opts = {
      -- Defaults
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </
    },
  },
  {
    "kylechui/nvim-surround",
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = { "node_modules", ".git", "build", "dist" },
      },
    },
    dependencies = {
      {
        "isak102/telescope-git-file-history.nvim",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "tpope/vim-fugitive",
        },
      },
    },
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-telescope/telescope.nvim", -- optional
      "neovim/nvim-lspconfig", -- optional
    },
    opts = {}, -- your configuration
  },
  { "nvchad/volt", lazy = true },
  { "nvchad/menu", lazy = true },
  {
    "MagicDuck/grug-far.nvim",
    config = function()
      require("grug-far").setup {
        -- options, see Configuration section below
        -- there are no required options atm
        -- engine = 'ripgrep' is default, but 'astgrep' can be specified
      }
    end,
  },
  {
    "davidmh/mdx.nvim",
    config = true,
    lazy = false,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
}
