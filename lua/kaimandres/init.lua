local M = {}

---@class KaimandresConfig
M.config = {
  undercurl = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  colors = {
    palette = {},
    theme = { all = {} },
  },
  overrides = function()
    return {}
  end,
  compile = false,
}

local function check_config(config)
  -- Simplified config check
  return true
end

function M.setup(config)
  if check_config(config) then
    M.config = vim.tbl_deep_extend("force", M.config, config or {})
  else
    vim.notify("Kaimandres: Errors found while loading user config. Using default config.", vim.log.levels.ERROR)
  end
end

function M.load()
  local utils = require("kaimandres.utils")

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "kaimandres"
  vim.o.termguicolors = true

  if M.config.compile then
    if utils.load_compiled() then
      return
    end
    M.compile()
    utils.load_compiled()
  else
    local colors = require("kaimandres.colors").setup({ colors = M.config.colors })
    local highlights = require("kaimandres.highlights").setup(colors, M.config)
    require("kaimandres.highlights").highlight(highlights, M.config.terminalColors and colors.theme.term or {})
  end
end

function M.compile()
  local colors = require("kaimandres.colors").setup({ colors = M.config.colors })
  local highlights = require("kaimandres.highlights").setup(colors, M.config)
  require("kaimandres.utils").compile(highlights, M.config.terminalColors and colors.theme.term or {})
end

return M
