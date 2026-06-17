local M = {}

local function set_hl()
    local normal = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
    local fg = normal.fg or (vim.o.background == "dark" and 0xffffff or 0x000000)
    local bg = normal.bg or (vim.o.background == "dark" and 0x000000 or 0xffffff)
    vim.api.nvim_set_hl(0, "StatusLine",   { fg = fg, bg = bg })
    vim.api.nvim_set_hl(0, "StatusLineNC", { fg = fg, bg = bg })
    vim.api.nvim_set_hl(0, "SLMode",       { fg = bg, bg = fg, bold = true })
end
vim.api.nvim_create_autocmd("ColorScheme", { callback = set_hl })
set_hl()

local modes = {
    n  = "N",  i  = "I",   v  = "V",
    V  = "V-LINE",  c  = "CMD",  R  = "R",
    t  = "T", ["\22"] = "V-BLOCK",
}

function M.render()
    local mode = modes[vim.api.nvim_get_mode().mode] or "?"

    local name = vim.api.nvim_buf_get_name(0)
    name = name ~= "" and vim.fn.fnamemodify(name, ":~:.") or "[No Name]"

    local modified = vim.bo.modified and " [+]" or ""

    local ft = vim.bo.filetype ~= "" and vim.bo.filetype or "-"

    return "%#SLMode# " .. mode .. " %#StatusLine# " .. name .. modified
        .. "%="
        .. ft .. " %#SLMode# %l:%c %#StatusLine#"
end

vim.o.statusline = "%!v:lua.require('core.statusline').render()"

return M
