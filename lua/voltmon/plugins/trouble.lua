return {
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("trouble").setup()

			vim.keymap.set("n", "<C-t>", function()
				require("trouble").toggle("diagnostics")
			end)
			vim.keymap.set("n", "<leader>tr", function()
				require("trouble").toggle("lsp_references")
			end)
			vim.keymap.set("n", "<leader>td", function()
				require("trouble").toggle("todo")
			end)
			vim.keymap.set("n", "<leader>tn", function()
				require("trouble").next({ jump = true })
			end)
			vim.keymap.set("n", "<leader>tp", function()
				require("trouble").prev({ jump = true })
			end)
		end,
	},
}
