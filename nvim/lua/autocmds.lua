local myAutoGroup = vim.api.nvim_create_augroup("myAutoGroup", {
    clear = true,
})

local autocmd = vim.api.nvim_create_autocmd


-- nvim-tree 自动关闭
autocmd("BufEnter", {
    nested = true,
    group = myAutoGroup,
    callback = function()
        if #vim.api.nvim_list_wins() == 1 and vim.api.nvim_buf_get_name(0):match("NvimTree_") ~= nil then
            vim.cmd("quit")
        end
    end,
})


-- 保存时自动格式化
autocmd("BufWritePre", {
    group = myAutoGroup,
    pattern = { "*.lua", "*.py", "*.sh", "*.go" },
    callback = vim.lsp.buf.formatting_sync,
})

-- 用 o 换行不要延续注释
autocmd("BufEnter", {
    group = myAutoGroup,
    pattern = "*",
    callback = function()
        vim.opt.formatoptions = vim.opt.formatoptions
            - "o"
            + "r"
    end,
})
