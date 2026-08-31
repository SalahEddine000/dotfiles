-- ~/.config/hypr/hyprland.lua
-- Corrected version — fixes all 5 reported config errors.
-- Loaded LAST by HyDE, so these override HyDE defaults.

-- ── Input ─────────────────────────────────────────────────────
hl.config({
	input = {
		kb_layout = "fr",
		follow_mouse = 1,
		sensitivity = 0,
		force_no_accel = true,
		numlock_by_default = true,
		touchpad = { natural_scroll = false },
	},
	-- FIX #2: 'dwindle.pseudotile' was REMOVED in Hyprland 0.55.
	-- Do not set it. preserve_split still exists:
	dwindle = {
		preserve_split = true,
	},
	master = { new_status = "master" },
	misc = {
		vrr = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		force_default_wallpaper = 0,
	},
	xwayland = { force_zero_scaling = true },
})

-- FIX #3: per-device config uses hl.device(), NOT a config key.
hl.device({ name = "epic mouse V1", sensitivity = -0.5 })

-- ── Environment ───────────────────────────────────────────────
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("GDK_SCALE", "1")

-- ── Autostart (your extras only) ──────────────────────────────
hl.on("hyprland.start", function()
	hl.exec_cmd("[workspace 6 silent] discord")
	hl.exec_cmd("hyprsunset -t 3800")
end)

-- ── App launchers ─────────────────────────────────────────────
local browser = "librewolf"
hl.bind("SUPER + Return", hl.dsp.exec_cmd("kitty"), { description = "terminal" })
hl.bind("SUPER + E", hl.dsp.exec_cmd("thunar"), { description = "files" })
hl.bind("SUPER + C", hl.dsp.exec_cmd("nvim"), { description = "editor" })
hl.bind("SUPER + F", hl.dsp.exec_cmd(browser), { description = "browser" })
hl.bind("SUPER + W", hl.dsp.exec_cmd("elecwhat"), { description = "whatsapp" })
hl.bind("XF86Calculator", hl.dsp.exec_cmd("gnome-calculator"), { description = "calc" })
hl.bind("SUPER + X", hl.dsp.exec_cmd("shutdown -h now"), { description = "shutdown" })

-- ── Window actions ────────────────────────────────────────────
hl.bind("SUPER + T", hl.dsp.window.float({ action = "toggle" }), { description = "float" })
-- FIX #4: modifier must be UPPERCASE "ALT", not "Alt".
hl.bind("ALT + Return", hl.dsp.window.fullscreen(), { description = "fullscreen" })
hl.bind("ALT + Tab", hl.dsp.focus({ direction = "d" }), { description = "focus down" })

-- ── French AZERTY workspaces ──────────────────────────────────
local ws_keys = {
	ampersand = 1,
	eacute = 2,
	quotedbl = 3,
	apostrophe = 4,
	parenleft = 5,
	minus = 6,
	egrave = 7,
	underscore = 8,
	ccedilla = 9,
	agrave = 10,
}

for keysym, ws in pairs(ws_keys) do
	-- FIX #5: switch workspace via hl.dsp.focus({ workspace }), not workspace.change
	hl.bind("SUPER + " .. keysym, hl.dsp.focus({ workspace = ws }), { description = "workspace " .. ws })

	-- Move window to workspace. See note below re: exact dispatcher name.
	hl.bind(
		"SUPER + SHIFT + " .. keysym,
		hl.dsp.exec_cmd("hyprctl dispatch movetoworkspace " .. ws),
		{ description = "move to workspace " .. ws }
	)
end

hl.env("TERMINAL", "kitty")

-- ── Workspace → Monitor binding ───────────────────────────────
-- Display 1: workspaces 1–5
hl.workspace_rule({ workspace = "1", monitor = "DP-2", default = true, persistent = true })
hl.workspace_rule({ workspace = "2", monitor = "DP-2" })
hl.workspace_rule({ workspace = "3", monitor = "DP-2" })
hl.workspace_rule({ workspace = "4", monitor = "DP-2" })
hl.workspace_rule({ workspace = "5", monitor = "DP-2" })

-- Display 2: workspaces 6–9
hl.workspace_rule({ workspace = "6", monitor = "HDMI-A-1", default = true })
hl.workspace_rule({ workspace = "7", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "8", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "9", monitor = "HDMI-A-1" })
hl.workspace_rule({ workspace = "10", monitor = "HDMI-A-1" })

-- ── AZERTY-safe workspace binds ───────────────────────────────
-- code:10 = physical "1/&" key … code:12 = "3/\"" … code:19 = "0/à"
for i = 1, 10 do
	local kc = "code:" .. (i + 9) -- i=1→code:10, i=3→code:12, i=10→code:19

	-- Switch to workspace
	hl.bind("SUPER + " .. kc, hl.dsp.focus({ workspace = i }))

	-- Move focused window to workspace (Test 1 proved this dispatcher works)
	hl.bind("SUPER + SHIFT + " .. kc, hl.dsp.window.move({ workspace = i }))
end
