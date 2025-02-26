return {
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			-- Example config in lua
			vim.g.nord_contrast = true
			vim.g.nord_borders = false
			vim.g.nord_disable_background = true
			vim.g.nord_italic = false
			vim.g.nord_uniform_diff_background = true
			vim.g.nord_bold = false

			-- Toggle background transparency
			local bg_transparent = true

			local toggle_transparency = function()
				bg_transparent = not bg_transparent
				vim.g.nord_disable_background = bg_transparent
				vim.cmd([[colorscheme nord]])
			end

			vim.keymap.set("n", "<leader>bg", toggle_transparency, { noremap = true, silent = true })
		end,
	},
	-- gruvbox theme
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "hard", -- Options: 'hard', 'medium', 'soft'
				transparent_mode = true, -- Enable transparent background
				terminal_colors = true,
				styles = {
					comments = {}, -- Style for comments
					keywords = {}, -- Style for keywords
					functions = {},
					variables = {},
				},
			})
			vim.cmd("colorscheme gruvbox") -- Apply the colorscheme
		end,
	},
	--tokyonight theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			require("tokyonight").setup({
				style = "storm", -- options = 'storm', night, moon, day
				transparent = true, -- Equivalent to `vim.g.nord_disable_background = true`
				terminal_colors = true,
				styles = {
					comments = {}, -- Equivalent to `vim.g.nord_italic = false` (set to `{}` if you want no italics)
					keywords = {}, -- Equivalent to `vim.g.nord_bold = false` (set to `{}` to disable bold)
					functions = {},
					variables = {},
				},
			})
			vim.cmd("colorscheme tokyonight")
		end,
	},
	--catppuccin theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		config = function()
			require("catppuccin").setup({
				flavour = "mocha", --options 'mocha', 'latte', 'machhiato','fappe'
				transparent_background = true, -- Equivalent to `vim.g.nord_disable_background = true`
				term_colors = true,
				styles = {
					comments = { "italic" }, -- Equivalent to `vim.g.nord_italic = false` (set to `{}` if you want to disable italics)
					conditionals = { "bold" }, -- Equivalent to `vim.g.nord_bold = false` (set to `{}` if you want no bold)
					loops = {},
					functions = {},
					keywords = {},
					strings = {},
					variables = {},
					numbers = {},
					booleans = {},
					properties = {},
					types = {},
				},
				integrations = {
					treesitter = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "bold" },
							hints = { "italic" },
							warnings = { "underline" },
							information = {},
						},
						underlines = {
							errors = { "undercurl" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
					},
					telescope = true,
					gitsigns = true,
					cmp = true,
					nvimtree = true,
					indent_blankline = { enabled = true, colored_indent_levels = false },
				},
			})
		end,
	},
}
