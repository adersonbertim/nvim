vim.cmd "colorscheme neon"
--vim.cmd "colorscheme rose-pine"

--local colorscheme = "tokyonight"
--local colorscheme = "rose-pine"
local colorscheme = "neon"
local status_ok _ = pcall(vim.cmd , "colorscheme" .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found")
  return 
end
