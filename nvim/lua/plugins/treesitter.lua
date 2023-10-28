return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "c", "css", "lua", "vim", "vimdoc", "go", "gomod", "gosum", "javascript", "html" },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
        })
    end
}
