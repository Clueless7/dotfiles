return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      {
        "nvim-lua/plenary.nvim",
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make"
      },
      {
        "nvim-tree/nvim-web-devicons",
        opts = {}
      }
    },
    config = function()
      local telescope = require("telescope.builtin")
      vim.keymap.set("n", "<space>ff", telescope.find_files)
      vim.keymap.set("n", "<space>fd", telescope.git_files)
      vim.keymap.set("n", "<space>fg", telescope.live_grep)
    end
  }
}
