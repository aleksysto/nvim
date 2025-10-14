return {
	"VonHeikemen/lsp-zero.nvim",
	event = { "BufReadPre", "BufNewFile" },
	name = "lsp-zero",
	dependencies = {
		"neovim/nvim-lspconfig",
		"neovim/nvim-lspconfig",
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",
	},
	config = function()
		require("mason").setup({
			ui = {
				border = "rounded",
			},
		})
		require("mason-lspconfig").setup()
		vim.lsp.config.pyright = {
			settings = {
				python = {
					analysis = {
						diagnosticMode = "workspace",
						autoImportCompletion = true,
						autoSearchPaths = true,
						useLibraryCodeForTypes = true,
						extraPaths = { "src" },
					},
				},
			},
		}
		vim.lsp.config("clangd", {
			-- Server-specific settings. See `:help lsp-quickstart`
			settings = {
				["clangd"] = {
					capabilities = {
						{
							offsetEncoding = { "utf-8", "utf-16" },
							textDocument = {
								completion = {
									editsNearCursor = true,
								},
							},
						},
					},
					cmd = { "clangd" },
					filetype = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
					root_markers = {
						".clangd",
						".clang-tidy",
						".clang-format",
						"compile_commands.json",
						"compile_flags.txt",
						"configure.ac",
						".git",
					},
				},
			},
		})

		vim.diagnostic.config({ update_in_insert = true, source = true })
	end,
}
