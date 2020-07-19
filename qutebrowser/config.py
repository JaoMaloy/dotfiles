import dracula.draw

# Load existing settings made via :set
config.load_autoconfig()

dracula.draw.blood(c, {
    'spacing': {
        'vertical': 6,
        'horizontal': 8
    }
})

c.completion.shrink = True

config.bind(' v', 'spawn mpv {url}')
config.bind(' bw', 'spawn --userscript qute-bitwarden')

