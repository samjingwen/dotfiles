return {
  "snacks.nvim",
  opts = function(_, opts)
    -- Insert your custom session key to the dashboard
    table.insert(
      opts.dashboard.preset.keys,
      7,
      { icon = "S", key = "S", desc = "Select Session", action = require("persistence").select }
    )

    opts.picker = opts.picker or {}

    opts.picker.layouts = opts.picker.layouts or {}
    opts.picker.layouts.wide_vertical = {
      layout = {
        backdrop = false,
        width = 0.8,
        min_width = 100,
        height = 0.9,
        min_height = 30,
        box = "vertical",
        border = true,
        title = "{title} {live} {flags}",
        title_pos = "center",
        { win = "input", height = 1, border = "bottom" },
        { win = "list", border = "none" },
        { win = "preview", title = "{preview}", height = 0.7, border = "top" },
      },
    }

    opts.picker.layout = {
      preset = "wide_vertical",
    }
  end,
}
