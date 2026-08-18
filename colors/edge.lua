-- Clear sub-modules so edits to palette/highlights are picked up on reload.
-- We intentionally keep 'edge' (init) in cache so setup() config is preserved.
package.loaded["edge.palette"]    = nil
package.loaded["edge.highlights"] = nil

local edge    = require("edge")
local variant = vim.g.edge_variant or edge.config.variant

edge.load(variant)
