local M = {}

local c = {
  andracita    = "#1B262C",
  teal         = "#0B7285",
  orange       = "#E7590C",
  white        = "#FFFFFF",
  teal_dark    = "#074A56",
  teal_light   = "#60a3b0",
  orange_dark  = "#963A08",
  orange_light = "#EF9361",
  bronze       = "#796648",
  bone         = "#F3F1EC",
  grey         = "#777c82",
}

M.dark = {
  -- Backgrounds (minor derivations to give depth — palette can't cover all bg shades)
  bg          = c.andracita,
  bg_alt      = "#141E23",
  bg_float    = "#0F181D",
  bg_visual   = c.teal_dark,
  bg_diff_add = "#0A2A2A",
  bg_diff_del = "#2E1008",
  bg_diff_chg = "#1A1408",
  cursor_line = "#1D2C34",

  -- Foreground
  fg          = c.white,
  fg_dim      = c.bone,

  -- Syntax — every role maps to a palette color
  comment     = c.grey,
  keyword     = c.orange,
  func        = c.orange_light,   -- distinct from strings
  string      = c.teal_light,
  type        = c.teal_light,     -- same hue as string, italic differentiates
  constant    = c.orange,
  number      = c.bronze,
  operator    = c.grey,
  punctuation = c.grey,
  variable    = c.white,
  parameter   = c.bone,
  property    = c.teal_light,
  namespace   = c.orange_light,
  tag         = c.orange,
  attribute   = c.teal_light,

  -- UI
  border      = c.teal_dark,
  line_nr     = c.grey,
  cur_line_nr = c.orange_light,
  status_bg   = c.teal_dark,
  status_fg   = c.white,
  pmenu_bg    = "#0F181D",
  pmenu_sel   = c.teal_dark,
  pmenu_sbar  = c.andracita,
  pmenu_thumb = c.teal,

  -- Diagnostics
  error       = c.orange,
  warning     = c.orange_light,
  info        = c.teal_light,
  hint        = c.grey,

  -- Git
  added       = c.teal_light,
  removed     = c.orange,
  changed     = c.orange_light,
}

M.light = {
  -- Backgrounds
  bg          = c.bone,
  bg_alt      = c.white,
  bg_float    = "#EDE9E2",
  bg_visual   = "#D0E8EC",
  bg_diff_add = "#C8E8DF",
  bg_diff_del = "#F5D8CC",
  bg_diff_chg = "#F0E8D4",
  cursor_line = "#E8E4DA",

  -- Foreground
  fg          = c.andracita,
  fg_dim      = "#3D4E56",

  -- Syntax — all 11 palette colors distributed
  comment     = c.grey,
  keyword     = c.orange_dark,
  func        = c.teal,           -- distinct, great contrast on bone
  string      = c.teal_dark,
  type        = c.orange,         -- distinct from func and string
  constant    = c.orange_dark,
  number      = c.bronze,
  operator    = c.andracita,
  punctuation = c.grey,
  variable    = c.andracita,
  parameter   = c.orange_dark,
  property    = c.teal_light,     -- lighter teal than func
  namespace   = c.teal,
  tag         = c.orange_dark,
  attribute   = c.orange_light,

  -- UI
  border      = c.bronze,
  line_nr     = c.grey,
  cur_line_nr = c.orange_dark,
  status_bg   = c.andracita,
  status_fg   = c.bone,
  pmenu_bg    = "#EDE9E2",
  pmenu_sel   = "#D0E8EC",
  pmenu_sbar  = c.bone,
  pmenu_thumb = c.bronze,

  -- Diagnostics
  error       = c.orange_dark,
  warning     = c.orange,
  info        = c.teal,
  hint        = c.grey,

  -- Git
  added       = c.teal_dark,
  removed     = c.orange_dark,
  changed     = c.orange,
}

return M
