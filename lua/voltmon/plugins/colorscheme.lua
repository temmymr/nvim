function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	-- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })

	-- vim.api.nvim_set_hl(0, "Visual", { bg = "none", reverse = true })
	-- vim.api.nvim_set_hl(0, "Comment", { italic = false, fg = "#7c7c7c" })
end

return {
	{
		"folke/tokyonight.nvim",
		opts = {},
		config = function()
			require("tokyonight").setup({
				-- use the night style
				style = "night",
				light_style = "day",
				transparent = false,
				-- disable italic for functions
				styles = {
					functions = {},
				},
				sidebars = { "qf", "vista_kind", "terminal", "packer" },
				-- Change the "hint" color to the "orange" color, and make the "error" color bright red
				on_colors = function(colors)
					colors.hint = colors.orange
					colors.error = "#ff0000"
				end,
				day_brightness = 0.3,
			})

			-- vim.cmd.colorscheme("tokyonight-night")
			-- ColorMyPencils("tokyonight-night")
		end,
	},

	{
		"rose-pine/neovim",
		name = "rose-pine",
		init = function()
			require("rose-pine").setup({
				variant = "auto", -- auto, main, moon, or dawn
				dark_variant = "main", -- main, moon, or dawn
				dim_inactive_windows = false,
				extend_background_behind_borders = true,

				styles = {
					italic = false,
				},
				transparent = false,
			})

			-- vim.cmd.colorscheme("rose-pine")
			-- ColorMyPencils("rose-pine")
			vim.cmd.hi("Comment gui=none")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				terminal_colors = true, -- add neovim terminal colors
				undercurl = false,
				underline = false,
				bold = false,
				italic = {
					strings = false,
					emphasis = false,
					comments = false,
					operators = false,
					folds = false,
				},
				strikethrough = false,
				invert_selection = false,
				invert_signs = false,
				invert_tabline = false,
				invert_intend_guides = false,
				inverse = true, -- invert background for search, diffs, statuslines and errors
				contrast = "hard", -- can be "hard", "soft" or empty string
				palette_overrides = {},
				overrides = {},
				dim_inactive = false,
				transparent_mode = false,
			})

			-- vim.cmd.colorscheme("gruvbox")
			-- ColorMyPencils("gruvbox")
		end,
	},
	{
		"Mofiqul/vscode.nvim",
		config = function()
			require("vscode").setup({
				transparent = false,
				italic = false,
				contrast = false,
			})

			vim.cmd.colorscheme("vscode")
			ColorMyPencils("vscode")
		end,
	},
}
