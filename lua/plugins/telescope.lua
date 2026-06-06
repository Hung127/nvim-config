return {
    {
        "nvim-telescope/telescope.nvim",
        version = "*",

        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "make",
            },
        },

        keys = {
            {
                "<leader>sf",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "[S]earch [F]iles",
            },

            {
                "<leader>sg",
                function()
                    require("telescope.builtin").live_grep()
                end,
                desc = "[S]earch by [G]rep",
            },

            {
                "<leader>sb",
                function()
                    require("telescope.builtin").buffers()
                end,
                desc = "[S]earch [B]uffers",
            },

            {
                "<leader>sH",
                function()
                    require("telescope.builtin").help_tags()
                end,
                desc = "[S]earch [H]elp",
            },

            {
                "<leader>sr",
                function()
                    require("telescope.builtin").oldfiles()
                end,
                desc = "[S]earch [R]ecent Files",
            },

            {
                "<leader>sF",
                function()
                    require("telescope.builtin").git_files()
                end,
                desc = "[S]earch Git [F]iles",
            },

            {
                "<leader>sh",
                function()
                    require("telescope.builtin").find_files {hidden = true}
                end,
                desc = "[S]earch [H]idden Files",
            }
        },
    },
}
