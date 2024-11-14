return {
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup({
                open_no_results = true,
                modes = {
                    lsp_document_symbols = {
                        format = "{kind_icon} {symbol.name} {pos}",
                        filter = {
                            -- remove Package since luals uses it for control flow structures
                            ["not"] = { ft = "lua", kind = "Package" },
                            any = {
                                -- all symbol kinds for help / markdown files
                                ft = { "help", "markdown" },
                                -- default set of symbol kinds
                                kind = {
                                    "Class",
                                    "Constructor",
                                    "Enum",
                                    "Field",
                                    "Function",
                                    "Interface",
                                    "Method",
                                    "Module",
                                    "Namespace",
                                    "Package",
                                    "Property",
                                    "Struct",
                                    "Trait",
                                },
                            },
                        },
                    },
                    diags = {
                        sections = { "lsp_document_symbols", "diagnostics" },
                        win = { position = "left" },
                        auto_preview = false,
                        max_items = 10,
                        size = { width = 0.2 },
                        filter = { buf = 0 },
                    },
                    defs = {
                        mode = "lsp",
                    },
                }
            })

        end
    },
}
