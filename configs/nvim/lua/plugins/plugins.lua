-- ~/.config/nvim/lua/plugins/example.lua

return {

  -- 1. oil.nvim

  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "nvim-mini/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },

  -- 2. Treesitter parsers

  {

    "nvim-treesitter/nvim-treesitter",

    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {

        "bash",
        "html",
        "javascript",
        "json",
        "lua",

        "markdown",
        "markdown_inline",
        "python",
        "query",

        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      })
    end,
  },

  -- 3. Telescope

  {

    "nvim-telescope/telescope.nvim",

    keys = {

      {

        "<leader>fp",

        function()
          require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
        end,

        desc = "Find Plugin File",
      },
    },

    opts = {

      defaults = {

        layout_strategy = "horizontal",

        layout_config = { prompt_position = "top" },

        sorting_strategy = "ascending",

        winblend = 0,
      },
    },
  },

  -- 4. Statusline

  {

    "nvim-lualine/lualine.nvim",

    event = "VeryLazy",

    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "😄"
        end,
      })
    end,
  },

  -- 5. Mason / LSP tools

  {

    "mason-org/mason.nvim",

    opts = {

      ensure_installed = { "stylua", "shellcheck", "shfmt", "flake8" },
    },
  },

  -- 6. TypeScript support

  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- 7. JSON + schemastore support

  { import = "lazyvim.plugins.extras.lang.json" },

  -- 1. gruvbox plugin
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false, -- load immediately
    priority = 1000, -- ensures it's loaded before LazyVim
  },
}
