-- NOTE: default lunarvim find_files wouldn't show hidden files
--
lvim.builtin.which_key.mappings["f"] = { "<cmd>Telescope find_files<CR>", "Find Files" }
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }

lvim.builtin.which_key.setup.plugins = {
  marks = true, -- shows a list of your marks on ' and `
  registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
  spelling = {
    enabled = true,
    suggestions = 20,
  }, -- use which-key for spelling hints
}

lvim.builtin.which_key.setup.presets = {
  operators = true, -- enable help for operators like d, y, ...
  motions = true, -- enable help for motions
  text_objects = false, -- disable help for text objects
  windows = false, -- disable default bindings on <c-w>
  nav = false, -- disable misc bindings to work with windows
  z = false, -- disable bindings for folds, spelling and others prefixed with z
  g = false, -- disable bindings prefixed with g
}
