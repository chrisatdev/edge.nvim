local palette = require("edge.palette")
local edge    = require("edge")

local variant = vim.g.edge_variant or edge.config.variant or "default"
local p       = (variant == "light") and palette.light or palette.dark

-- For mode 'a' pill: dark fg on bright bg, or light fg on dark bg
local dark_fg = p.bg   -- Andracita — good on Orange / TealLight / Bronze
local lite_fg = p.fg   -- White     — good on TealDark / Teal

return {
  normal = {
    a = { fg = lite_fg,   bg = p.status_bg,   gui = "bold" },
    b = { fg = p.fg_dim,  bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  insert = {
    a = { fg = dark_fg,   bg = p.keyword,     gui = "bold" },
    b = { fg = p.keyword, bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  visual = {
    a = { fg = dark_fg,   bg = p.func,        gui = "bold" },
    b = { fg = p.func,    bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  replace = {
    a = { fg = lite_fg,   bg = p.number,      gui = "bold" },
    b = { fg = p.number,  bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  command = {
    a = { fg = dark_fg,   bg = p.info,        gui = "bold" },
    b = { fg = p.info,    bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  terminal = {
    a = { fg = lite_fg,   bg = p.pmenu_thumb, gui = "bold" },
    b = { fg = p.fg_dim,  bg = p.bg_alt },
    c = { fg = p.fg,      bg = p.bg_alt },
  },
  inactive = {
    a = { fg = p.comment, bg = p.bg_alt,      gui = "bold" },
    b = { fg = p.comment, bg = p.bg_alt },
    c = { fg = p.comment, bg = p.bg_alt },
  },
}
