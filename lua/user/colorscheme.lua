vim.cmd "colorscheme tokyonight"

local colorscheme = "tokyonight"

local status_ok _ = pcall(vim.cmd , "colorscheme" .. colorscheme)
if not status_ok then
  vim.notify("Colorscheme " .. colorscheme .. " not found")
  return 
end