return {
    options = {
        theme = "auto",
        component_separators = "",
        section_separators = "",
        icons_enabled = false
    },
    sections = {
        lualine_b = { "diff", "diagnostics" },
        lualine_x = { "filetype" }
    },
    tabline = {
        lualine_a = {
            {
                "buffers",
                show_filename_only = true,
                mode = 0,
                use_mode_colors = false,
                show_modified_status = false
            }
        }
    }
}
