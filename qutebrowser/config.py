import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {})

c.completion.shrink = True

config.bind(';v', 'spawn mpv {url}')
config.bind(';p', 'spawn --userscript qute-bitwarden')

