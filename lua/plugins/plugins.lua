-- every spec file under the "plugins" directory will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- add catppuccin
  -- { "catppuccin/nvim", name = "catppuccin", opts = {}, priority = 1000 },
  { "rebelot/kanagawa.nvim", name = "kanagawa" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa",
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
