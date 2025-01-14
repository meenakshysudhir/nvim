require "essentials"
require "lazyplugins"
--require "packerPlugins"
require "colorscheme"
require "nvimtree"
require "ultisnips"
require "copilot"
require "clipboard"
require "toggletermconfig"
require "snippets"
require "mason-lsp"
require "completion"
require "fold"

--require "nvimcmp"

require "telescope" --checkhealth is not working

-- Import the nvim-autopairs module
local npairs = require('nvim-autopairs')

-- Setup nvim-autopairs
npairs.setup({
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = [=[[%'%"%>%]%)%}%,]]=],
    end_key = '$',
    before_key = 'h',
    after_key = 'l',
    cursor_pos_before = true,
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    manual_position = true,
    highlight = 'Search',
    highlight_grey = 'Comment',
  },
})
-- Enable true color support
if vim.fn.has('termguicolors') == 1 then
    vim.o.termguicolors = true
end

require("feline").setup()


