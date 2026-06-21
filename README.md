## WM/DE originally was GNOME but switched to...

- Hyprland
- ^ with:
	- Hypridle
	- Hyprlock
	- hyprpolkitserver
	- Hyprpicker
	- Hyprshot
	- plus all the other hypr* and wayland stuff for dependencies

## Eyecandy and System Utilities
- Matugen - `extra/matugen`
	+ needs `chaotic-aur/python-materialyoucolor` for terminal template
- Toolkit themes:
	- Qt - `aur/darkly-bin`
		+ `aur/darkly-bin` currently does not have `extra/frameworkintegration` as deps
		+ suggestion: `extra/qt5ct` & `extra/qt6ct`
	- GTK - `extra/adw-gtk-theme` or [drop in ~/.local/share/themes](https://github.com/lassekongo83/adw-gtk3)
		+ suggestion: `extra/nwg-look`
	- Icons - `aur/whitesur-icon-theme` or [use script](https://github.com/vinceliuice/WhiteSur-icon-theme)
	- Cursor - `aur/bibata-cursor-theme` or [drop in ~/.local/share/icons](https://github.com/ful1e5/Bibata_Cursor)
- Fonts
	+ Readex Pro - `chaotic-aur/ttf-readex-pro`
	+ Lexend - `aur/lexend-fonts-git` 
	+ Anonymice Pro Nerd Font - `extra/ttf-anonymouspro-nerd`
- Kitty - `extra/kitty`
	+ previously Alacritty
- waybar - `extra/waybar`
- swaync - `extra/swaync`
- swayosd - `extra/swayosd`
- Ly - `extra/ly`
> conf: `/etc/ly/config.ini`
- Nautilus - `extra/nautilus`
- ^ with extensions:
	- `extra/nautilus-python`
	- `aur/nautilus-admin-gtk4` 
	- `extra/nautilus-image-converter`
	- `extra/sushi`
- Yazi - `extra/yazi`
- fastfetch - `extra/fastfetch`
	+ with my own, ai-slop crafted fetch script named `shipfetch`
		* deps: `extra/imagemagick`
- awww - `extra/awww`
- ^ with Waypaper - `chaotic-aur/waypaper-git`
- micro - `extra/micro`
- Wofi - `extra/wofi`
- ^ extensions:
	- `aur/wofi-emoji`
	- `extra/cliphist`
- nm-applet - `extra/network-manager-applet`
- blueberry-tray - `aur/blueberry-wayland`
- udiskie - `extra/udiskie`
- wlsunset - `extra/wlsunset`
	- flags on hypr autostart
- batsignal - `extra/batsignal`
	- also flags on hypr autostart
- wlogout - `chaotic-aur/wlogout`
- Starship - `extra/starship`
- wl-screenrec - `chaotic-aur/wl-screenrec`
- pulse-visualizer - `aur/pulse-visualizer-git`

## Other software (in no order)
- Zen Browser (for Firefox)
- Goofcord (for Discord)
- Ghostwriter
- cpupower-gui
- ryzenadj
- kdeconnect
- steam
- gimp
	+ with PhotoGIMP
- pano-scrobbler 
- Tenacity
	+ currently Audacity but will be installing that instead when reinstalling
- Bottles
- Freesm Launcher (for Minecraft)
	+ previously the vanilla Prism Launcher but the free method got patched lmao
- Rhythmbox
- kew
- Spotify
	+ with Spicetify 
	> conf: `~/.config/spicetify`
- EasyEffects
	+ previously JamesDSP
- Blender
- Sunshine


