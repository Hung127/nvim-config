-- highlight on yank
local my_group = vim.api.nvim_create_augroup("my group", { clear = true})

vim.api.nvim_create_autocmd({"TextYankPost"}, {
    group = my_group,
    callback = function()
        vim.highlight.on_yank()
    end
})

vim.api.nvim_create_user_command("HelloWorld", 
    function() 
        print("I am saying hello")
    end,
    {desc = "Say hello to the world"}
)
