return {
    "3rd/image.nvim",
    dependencies = {
        "kiyoon/magick.nvim",
    },
    build = false,
    opts = {
        backend = "kitty",         -- whatever backend you would like to use
        processor = "magick_rock", -- or "magick_cli" use cli
        max_width = 100,
        max_height = 12,
        max_height_window_percentage = math.huge,
        max_width_window_percentage = math.huge,
        window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
        window_overlap_cleaar_ft_ignore = { "cmp_menu", "cmp_docs", "" },
    },
}
