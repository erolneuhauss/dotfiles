require("lvim.lsp.manager").setup("ansiblels")

-- very strange things happen, if I uncomment those two here
-- local linters = require "lvim.lsp.null_ls.linters"
-- linters.setup({{exe = "ansible-lint", filetypes = {"yaml.ansible"} }})
