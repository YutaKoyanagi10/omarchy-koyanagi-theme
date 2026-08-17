local active_border_color = { colors = { "rgb(D8D8D8)", "rgb(F0F0F0)", "rgb(FFFFFF)", "rgb(C8C8C8)" }, angle = 45 }
local inactive_border_color = "rgba(808080aa)"

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
      range = 30,
      render_power = 4,
      color = "rgba(00000055)",
      color_inactive = "rgba(00000033)",
      offset = "0 4",
    },

    blur = {
      enabled = true,
      size = 12,
      passes = 4,
      contrast = 1.2,
      brightness = 0.9,
      vibrancy = 0.4,
      vibrancy_darkness = 0.3,
      noise = 0.12,
      ignore_opacity = true,
    },

    active_opacity = 0.75,
    inactive_opacity = 0.65,
    fullscreen_opacity = 1.0,
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})

-- Blur on all shell surfaces
local shell_layers = {
  "omarchy-bar", "omarchy-menu", "omarchy-notifications",
  "omarchy-clipboard", "omarchy-emojis", "omarchy-osd",
  "omarchy-polkit", "omarchy-image-selector", "omarchy-reminders",
  "omarchy-network-qr", "omarchy-keyboard-panel",
}

local blur_rules = {}
for _, ns in ipairs(shell_layers) do
  table.insert(blur_rules, { rule = "blur", match = { namespace = ns } })
  table.insert(blur_rules, { rule = "ignorezero", match = { namespace = ns } })
end

hl.config({ layerrule = blur_rules })
