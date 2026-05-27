return {
  -- 1. All colorscheme plugins
  -- LazyVim automatically handles loading these if you use the 'opts' method
  { "ramojus/mellifluous.nvim" },
  { "bjarneo/vantablack.nvim", opts = { transparent = true } },
  -- { "metalelf0/black-metal-theme-neovim", opts = { transparent = true } },
  { "darkvoid-theme/darkvoid.nvim", opts = { transparent = true } },
  { "bjarneo/aether.nvim", opts = { transparent = true } },

  -- Corrected format for all other plugins
  { "oskarnurm/koda.nvim" },
  { "andreypopp/vim-colors-plain" },
  { "folke/tokyonight.nvim" },
  { "catppuccin/nvim", name = "catppuccin" },
  { "rebelot/kanagawa.nvim" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  { "shaunsingh/nord.nvim" },
  { "navarasu/onedark.nvim" },
  { "EdenEast/nightfox.nvim" },
  { "sainnhe/everforest" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "marko-cerovac/material.nvim" },
  { "Mofiqul/dracula.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "nyoom-engineering/oxocarbon.nvim" },
  { "RRethy/base16-nvim" },

  -- 2. Centralized Control
  {
    "LazyVim/LazyVim",
    opts = {
      -- Set your desired colorscheme here.
      -- LazyVim will automatically load the plugin and run the command.
      colorscheme = "edge",
    },
  },
}
