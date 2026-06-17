local M = {}

function M.render()
    local s = ""
    local current = vim.api.nvim_get_current_buf()

    for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        if vim.bo[buf].buflisted then
            local name = vim.api.nvim_buf_get_name(buf)
            name = name ~= "" and vim.fn.fnamemodify(name, ":t") or "[No Name]"

            local modified = vim.bo[buf].modified and " +" or ""

            if buf == current then
                s = s .. "%#TabLineSel# " .. name .. modified .. " %#TabLineFill#"
            else
                s = s .. "%#TabLine# " .. name .. modified .. " "
            end
        end
    end

    return s .. "%#TabLineFill#%="
end

vim.o.showtabline = 2
vim.o.tabline = "%!v:lua.require('core.bufferline').render()"

return M
