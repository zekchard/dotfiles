<div align=center>

# shipfetch
my **vibecoded** [^1] extension of fastfetch that so happens to have matugen integration for some reason

![shipfetch demo.](../../dotfile-repo-assets/shipfetchdemo.gif)

</div>

## Dependencies
- `extra/imagemagick`
- `extra/kitty` or any other terminal that uses the kitty image protocol

## Matugen template snippet
```toml
[config]
# ...
[templates.shipfetch]
input_path = '~/.config/matugen/templates/current'
post_hook = 'magick mogrify -path /home/zek/scripts/shipfetch/assets/ -gamma 1.75 -fill "{{colors.primary.default.hex}}" -tint 80 /home/zek/scripts/shipfetch/assets/base/*.png'
# ...
```

[^1]: only part that is vibecoded is [`shipfetch.sh`](shipfetch.sh). all images used i edited myself.