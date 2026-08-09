 local M = {}

function M.setup()
  require('base16-colorscheme').setup({
    base00 = '#151312',
    base01 = '#211f1e',
    base02 = '#2c2929',
    base03 = '#9b8e8a',
    base04 = '#d2c3bf',
    base05 = '#e7e1e0',
    base06 = '#e7e1e0',
    base07 = '#e7e1e0',
    base08 = '#ffb4ab',
    base09 = '#cfc6b3',
    base0A = '#d1c4c0',
    base0B = '#d9c2ba',
    base0C = '#cfc6b3',
    base0D = '#d9c2ba',
    base0E = '#d1c4c0',
    base0F = '#93000a',
  })

  local hi = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  hi('TelescopeNormal',         { fg = '#e7e1e0',          bg = '#151312' })
  hi('TelescopeBorder',         { fg = '#9b8e8a',             bg = '#151312' })
  hi('TelescopePromptNormal',   { fg = '#e7e1e0',          bg = '#151312' })
  hi('TelescopePromptBorder',   { fg = '#9b8e8a',             bg = '#151312' })
  hi('TelescopePromptPrefix',   { fg = '#d9c2ba',             bg = '#151312' })
  hi('TelescopePromptCounter',  { fg = '#d2c3bf',  bg = '#151312' })
  hi('TelescopePromptTitle',    { fg = '#151312',             bg = '#d9c2ba' })
  hi('TelescopePreviewTitle',   { fg = '#151312',             bg = '#d1c4c0' })
  hi('TelescopeResultsTitle',   { fg = '#151312',             bg = '#cfc6b3' })
  hi('TelescopeSelection',      { fg = '#e7e1e0',          bg = '#2c2929' })
  hi('TelescopeSelectionCaret', { fg = '#d9c2ba',             bg = '#2c2929' })
  hi('TelescopeMatching',       { fg = '#d9c2ba',             bold = true })
end

 -- Register a signal handler for SIGUSR1 (matugen updates)
 local signal = vim.uv.new_signal()
 signal:start(
   'sigusr1',
   vim.schedule_wrap(function()
     package.loaded['matugen'] = nil
     require('matugen').setup()
   end)
 )

 return M
