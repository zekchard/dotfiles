<div align=center>

# (a very janky) Zen Browser Matugen integration
![Screenshot](dotfile-repo-assets/2026-06-22-114649_hyprshot.png)

</div>

**This integration needs needs [Transparent Zen](https://zen-browser.app/mods/642854b5-88b4-4c40-b256-e035532109df/) mod along with [Zen Internet](https://addons.mozilla.org/en-US/firefox/addon/zen-internet/) extension to work.**

## Template snippet
```toml
[config]
# ...
[templates.zen-browser]
input_path = '~/.config/matugen/templates/transparentzen.js'
output_path = '~/.config/zen/[your profile]/user.js'
# ...
```

You can get the name of your profile directory in `about:profiles` -> `Root Directory` of your current profile.

![You can get the name of your profile directory in about:profiles to Root Directory of your current profile.](dotfile-repo-assets/aboutprofiles.gif)




