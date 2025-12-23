local theme = require("kaimandres.colors").setup().theme

local kaimandres = {}

-- ============================================================================
-- Normal Mode (Blue)
-- ============================================================================
kaimandres.normal = {
  a = { bg = theme.syn.fun, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.fun },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Insert Mode (Green)
-- ============================================================================
kaimandres.insert = {
  a = { bg = theme.diag.ok, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.diag.ok },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Command Mode (Orange - Changed for better distinction)
-- ============================================================================
kaimandres.command = {
  a = { bg = theme.syn.number, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.number },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Visual Mode (Purple)
-- ============================================================================
kaimandres.visual = {
  a = { bg = theme.syn.keyword, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.keyword },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Replace Mode (Rose - Changed from Constant to Preproc/Rose for "Danger")
-- ============================================================================
kaimandres.replace = {
  a = { bg = theme.syn.preproc, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.preproc },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Terminal Mode (Teal)
-- ============================================================================
kaimandres.terminal = {
  a = { bg = theme.syn.special1, fg = theme.ui.bg_m3, gui = "bold" },
  b = { bg = theme.ui.bg_p2, fg = theme.syn.special1 },
  c = { bg = theme.ui.bg_m1, fg = theme.ui.fg_dim },
}

-- ============================================================================
-- Inactive Window
-- ============================================================================
kaimandres.inactive = {
  a = { bg = theme.ui.bg_m3, fg = theme.ui.nontext, gui = "bold" },
  b = { bg = theme.ui.bg_m3, fg = theme.ui.nontext },
  c = { bg = theme.ui.bg_m3, fg = theme.ui.nontext },
}

return kaimandres
