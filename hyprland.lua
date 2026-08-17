local active_border_color = { colors = { "rgb(C0C0C0)", "rgb(D3D3D3)", "rgb(E5E5E5)", "rgb(B0B0B0)" }, angle = 45 }
local inactive_border_color = "rgba(404040ff)"

hl.config({
  general = {
    gaps_in = 4,
    gaps_out = 6,
    border_size = 1,

    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },

    resize_on_border = true,
    extend_border_grab_area = 15,
    allow_tearing = false,
    layout = "dwindle",
  },

  decoration = {
    rounding = 10,

    shadow = {
      enabled = true,
      range = 20,
      render_power = 10,
      color = "rgba(a7a7a7cc)",
      color_inactive = "rgba(00000066)",
      offset = "0 0",
    },

    blur = {
      enabled = true,
      size = 6,
      passes = 3,
      contrast = 1.5,
      brightness = 0.8,
      vibrancy = 0.2,
      vibrancy_darkness = 0.2,
      noise = 0.07,
      ignore_opacity = true,
      new_optimizations = true,
    },

    active_opacity = 0.98,
    inactive_opacity = 0.9,
    fullscreen_opacity = 1.0,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
