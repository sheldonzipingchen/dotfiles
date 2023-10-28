-- Plugin definition and loading
-- local execute = vim.api.nvim_command
local fn = vim.fn
local cmd = vim.cmd

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
    {
        "folke/which-key.nvim",
        lazy = true,
    },

    -- neo-truee
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            {
                "<leader>ft", "<cmd>Neotree toggle<cr>", desc = "NeoTree",
            }
        },
        config = function()
            require("neo-tree").setup()
        end,
    },

	-- Themes
	{ 
        "marko-cerovac/material.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.material_style = 'oceanic'
            vim.cmd [[colorscheme material]]
        end,
    },
})
