local M = {}

local defaults = {
  variant = "default",
  transparent_background = false,
}

M.config = vim.deepcopy(defaults)

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", defaults, opts or {})
end

function M.load(variant)
  local palette    = require("edge.palette")
  local highlights = require("edge.highlights")

  local v = variant or M.config.variant
  local p = (v == "light") and palette.light or palette.dark

  if M.config.transparent_background then
    p = vim.tbl_extend("force", p, {
      bg       = "NONE",
      bg_alt   = "NONE",
      bg_float = "NONE",
    })
  end

  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.background  = (v == "light") and "light" or "dark"
  vim.g.colors_name = "edge"

  for name, attrs in pairs(highlights.get(p)) do
    vim.api.nvim_set_hl(0, name, attrs)
  end
end

return M
