dofile(vim.g.base46_cache .. "nvimtree")

local nvtree = require "nvim-tree"
local api = require "nvim-tree.api"

-- Automatically open file upon creation
api.events.subscribe(api.events.Event.FileCreated, function(file)
  vim.cmd("edit " .. file.fname)
end)

-- Set attributes
nvtree.setup {
  filters = {
    dotfiles = false,
    git_ignored = false,
  },
  git = { enable = true },
  renderer = {
    highlight_git = true,
    root_folder_label = false,
  },
}
