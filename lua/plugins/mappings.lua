return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- Hello world test
          ["<Leader>hw"] = { "<cmd>echo 'Hello World!'<cr>", desc = "Say hello world" },

          ["<Leader>tt"] = {
            function()
              local term_number = vim.fn.input "Enter terminal number: "
              vim.cmd("ToggleTerm " .. term_number)
            end,
            desc = "Toggle specific terminal",
          },

          ["<Leader>ta"] = { "<cmd>ToggleTermToggleAll<cr>", desc = "Toggle all terminals" },

          ["t"] = { "<Cmd>exe v:count1 . 'ToggleTerm'<CR>", desc = "Toggle terminal with count" },

          ["<Leader>fp"] = { "<cmd>:Telescope project<cr>", desc = "Find projects" },
        },

        t = {
          ["<Esc>"] = { [[<C-\><C-n>]], desc = "Exit terminal mode" },
        },
      },
    },
  },
}
