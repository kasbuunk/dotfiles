local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
	highlight = {
			enable = true
	},
	ensure_installed = { 
		"c", 
		"go", 
		"lua", 
		"rust",
		"graphql", 
		"json", 
		"json5",
		"html", 
		"css", 
		"gomod",
		"gitignore", 
		"gitattributes",
		"bash", 
		"cmake", 
		"hcl", 
		"markdown", 
		"toml", 
		"yaml",
		"typescript", 
		"javascript", 
		"zig", 
		"sql", 
		"commonlisp",
		"latex", 
		"python", 
		"cpp",
	},
	auto_install = true,
	indent = {
		enable = true,
	}
}
