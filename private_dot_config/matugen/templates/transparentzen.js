//** needs Transparent Zen mod (https://zen-browser.app/mods/642854b5-88b4-4c40-b256-e035532109df/) **//

user_pref("zen.widget.linux.transparency", "true");
user_pref("browser.tabs.allow_transparent_browser", "true");
user_pref("mod.sameerasw.zen_transparency_color", "{{colors.surface.default.hex_alpha | to_color | set_alpha: 0.85 }}");
user_pref("mod.sameerasw.zen_bg_color_enabled", "true");
