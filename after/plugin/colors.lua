function ColorMyPencils(color) 
  color = color or "catppuccin"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { guibg=NONE, ctermbg=NONE, bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { guibg=NONE, ctermbg=NONE, bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { guibg=NONE, ctermbg=NONE, bg = "none" })
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { guibg=NONE, ctermbg=NONE, bg = "none" })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { guibg=NONE, ctermbg=NONE, bg = "none" })
end

ColorMyPencils()
