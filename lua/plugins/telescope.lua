return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-project.nvim", "ahmedkhalf/project.nvim" }, -- Add project.nvim for tracking
    config = function()
      local telescope = require "telescope"

      -- Load Telescope
      telescope.setup {
        extensions = {
          project = {
            base_dirs = {
              { path = "~/my-stuff/projects/", max_depth = 5 },
              { path = "~/wewear/", max_depth = 5 },
            },
            hidden_files = false, -- Show only non-hidden files
            order_by = "recent", -- Sort projects by recent usage
            search_by = "title", -- Search projects by folder name
            sync_with_nvim_tree = true, -- Sync with nvim-tree if installed
          },
        },
      }

      -- Load Project Extension
      telescope.load_extension "project"

      -- Configure Project.nvim (to track project usage)
      require("project_nvim").setup {
        manual_mode = false, -- Automatically detect projects
        detection_methods = { "pattern", "lsp" }, -- Detect projects using .git, LSP, etc.
        patterns = { ".git", "Makefile", "package.json", "pyproject.toml" }, -- Common project markers
        show_hidden = false, -- Hide hidden directories
        silent_chdir = true, -- Don't print when changing directories
      }
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
  },
  {
    "ahmedkhalf/project.nvim", -- Ensures projects are properly tracked
  },
}
