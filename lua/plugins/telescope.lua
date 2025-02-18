return {
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-telescope/telescope-project.nvim" },
    config = function()
      require("telescope").setup {
        extensions = {
          project = {
            base_dirs = {
              { path = "~/my-stuff/projects/", max_depth = 5 }, -- Change '~/projects' to your project folder
              { path = "~/wewear/", max_depth = 5 },
            },
            hidden_files = false, -- Show only non-hidden files
            order_by = "asc", -- Sort projects alphabetically
            search_by = "title", -- Search projects by folder name
            sync_with_nvim_tree = true, -- Optional: Sync with nvim-tree
          },
        },
      }
      require("telescope").load_extension "project"
    end,
  },
  {
    "nvim-telescope/telescope-project.nvim",
  },
}
