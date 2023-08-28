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

require("lazy").setup({
    "folke/which-key.nvim",

    -- nvim-tree
    "kyazdani42/nvim-tree.lua",

    -- bufferline
    { 'akinsho/bufferline.nvim',       version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

    -- lualine
    { 'nvim-lualine/lualine.nvim',     version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },

    -- telescope
    { 'nvim-telescope/telescope.nvim', version = "*", dependencies = 'nvim-lua/plenary.nvim' },
    -- telescope extends
    'LinArcX/telescope-env.nvim',
    'nvim-telescope/telescope-ui-select.nvim',

    -- treesitter
    { 'nvim-treesitter/nvim-treesitter',      version = "*", build = ":TSUpdate" },
    'p00f/nvim-ts-rainbow',

    -- indent-blankline
    'lukas-reineke/indent-blankline.nvim',

    -- Completion / linters / formatters
    "fatih/vim-go",
    "Exafunction/codeium.vim",

    --- LSP
    "williamboman/nvim-lsp-installer",

    -- LSP Config
    "neovim/nvim-lspconfig",

    -- 补全引擎
    "hrsh7th/nvim-cmp",

    -- Snippet 引擎
    "hrsh7th/vim-vsnip",

    -- 补全源
    "hrsh7th/cmp-vsnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp-signature-help",

    -- 常见编程语言代码段
    "rafamadriz/friendly-snippets",

    -- UI 增强
    "onsails/lspkind-nvim",
    "tami5/lspsaga.nvim",

    -- 代码格式化
    "mhartington/formatter.nvim",
    { "jose-elias-alvarez/null-ls.nvim",      version = "*", dependencies = "nvim-lua/plenary.nvim" },

    -- TypeScript 增强
    { "jose-elias-alvarez/nvim-lsp-ts-utils", version = "*", dependencies = "nvim-lua/plenary.nvim" },

    -- Lua 增强
    "folke/lua-dev.nvim",

    -- JSON 增强
    "b0o/schemastore.nvim",

    -- Rust 增强
    "simrat39/rust-tools.nvim",

    -- 主题
    "folke/tokyonight.nvim",


    -- surround
    "ur4ltz/surround.nvim",

    -- Comment
    "numToStr/Comment.nvim",

    -- nvim-autopairs
    "windwp/nvim-autopairs",

    -- git
    "lewis6991/gitsigns.nvim",

    -- vimspector
    "puremourning/vimspector",
})
