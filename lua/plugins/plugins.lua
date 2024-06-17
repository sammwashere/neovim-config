-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add catppuccin
  -- { "catppuccin/nvim", name = "catppuccin", opts = {}, priority = 1000 },
  { "folke/tokyonight.nvim", name = "tokyonight" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
  {
    "williamboman/mason-lspconfig.nvim", -- mason.nvim
    opts = {
      ensure_installed = {
        "astro",
        "tailwindcss",
        "tsserver",
        "svelte",
      },
    },
  },
}
