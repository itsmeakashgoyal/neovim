--Enable the new |lua-loader| that byte-compiles and caches lua files.
vim.loader.enable()

require("config.keymaps")
require("config.options")
require("config.autocmds")
require("config.abbreviations")
require("config.lazy")
