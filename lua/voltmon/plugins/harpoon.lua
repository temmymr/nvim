return {
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local harpoon = require("harpoon")

			harpoon:setup({})

			vim.keymap.set("n", "<leader>a", function()
				harpoon:list():add()
			end)
			vim.keymap.set("n", "<C-e>", function()
				harpoon.ui:toggle_quick_menu(harpoon:list())
			end)
			vim.keymap.set("n", "<Tab>", function()
				harpoon:list():next({ ui_nav_wrap = true })
			end)
			vim.keymap.set("n", "<S-Tab>", function()
				harpoon:list():prev({ ui_nav_wrap = true })
			end)
			vim.keymap.set("n", "<C-j>", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<C-k>", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<C-l>", function() harpoon:list():select(3) end)
		end,
	},
}
