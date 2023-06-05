# vim:fileencoding=utf-8:foldmethod=marker

from qutebrowser.config.configfiles import ConfigAPI  # noqa: F401
from qutebrowser.config.config import ConfigContainer  # noqa: F401

import json
from os.path import join, split

config = config  # type: ConfigAPI # noqa: F821 pylint: disable=E0602,C0103
c = c  # type: ConfigContainer # noqa: F821 pylint: disable=E0602,C0103

config.load_autoconfig(False)

c.aliases["qa"] = "quit --save"


# Keybinds {{{

config.bind("d", "spawn --userscript tab-close")

config.bind("j", "run-with-count 6 scroll down")
config.bind("k", "run-with-count 6 scroll up")

config.bind("J", "run-with-count 10 scroll down")
config.bind("K", "run-with-count 10 scroll up")

config.bind("!", "set-cmd-text :open -tr !")

config.bind("gt", "spawn --userscript vim-tab-next")
config.bind("gT", "spawn --userscript vim-tab-prev")

config.bind("gn", "navigate next")
config.bind("gN", "navigate prev")

config.bind("O", "set-cmd-text -s :open -tr")

config.bind("<Space>v", "spawn mpv {url}")
config.bind("<Space>f", "spawn firefox {url}")
config.bind("<Space>a", "open https://web.archive.org/web/*/{url}")

config.bind("cm", "clear-messages")

config.unbind("D")
config.bind("Dd", "download")
config.bind("Da", "download-cancel") # abort
config.bind("Dc", "download-clear")  # clear
config.bind("Dx", "download-delete") # delete
config.bind("Do", "download-open")   # open
config.bind("Dh", "download-remove") # hide
config.bind("Dr", "download-retry")  # retry

config.bind("wi", "devtools")
config.bind("wf", "devtools-focus")

config.bind("<Space>pk", "set tabs.position top")
config.bind("<Space>pj", "set tabs.position bottom")
config.bind("<Space>ph", "set tabs.position left")
config.bind("<Space>pl", "set tabs.position right")

config.bind("ö", "set-cmd-text -s :quickmark-load")

config.bind("<Space>t", "config-cycle --print content.proxy 'socks://localhost:9050' 'system'")
config.bind("<Space>bg", "config-cycle --print colors.webpage.bg 'black' 'white'")

# }}}

# use tor
# c.content.proxy = 'socks://localhost:9050/'

# search engines {{{
with open(join(split(__file__)[0], "engines.json")) as f:
    c.url.searchengines = json.load(f)
# }}}

c.auto_save.session = True

c.changelog_after_upgrade = "patch"

# colors {{{
c.colors.completion.fg = ["white", "white", "#ff7777"]

c.colors.tabs.even.bg = "#111"
c.colors.tabs.odd.bg = "#222"
c.colors.tabs.selected.even.bg = "#a20"
c.colors.tabs.selected.odd.bg = "#b31"

c.colors.hints.bg = "qlineargradient(x1:0, y1:0, x2:0, y2:1, stop:0 rgba(255, 247, 133, 0.8), stop:1 rgba(255, 197, 66, 0.8))"
c.colors.hints.match.fg = "#ff0"

# # Uncomment for dark mode
# c.colors.webpage.darkmode.enabled = True
# c.colors.webpage.darkmode.policy.images = "never"
# c.colors.webpage.darkmode.threshold.text = 128

c.colors.webpage.bg = "black"
c.colors.webpage.preferred_color_scheme = "dark"
# }}}

c.completion.favorite_paths = ["/home/leo/", "/home/leo/Documents/", "/home/leo/Schule/", "/home/leo/Projects"]
c.completion.use_best_match = True

c.content.pdfjs = True
# c.content.javascript.clipboard = "access"
c.content.mouse_lock = True
c.content.headers.accept_language = "en-US;en;de-DE;de;q=0.9"

c.downloads.remove_finished = 250_000

c.fonts.default_family = "Iosevka"
c.fonts.default_size = "14pt"
c.fonts.prompts = "14pt default_family"
c.fonts.tabs.unselected = "14pt default_family"
c.fonts.tabs.selected = "14pt default_family"

c.hints.chars = "asdefghjkln"

c.scrolling.smooth = True

c.tabs.last_close = "startpage"
c.tabs.favicons.scale = 1.1
c.tabs.indicator.padding["bottom"] = 2
c.tabs.indicator.padding["top"] = 2
c.tabs.select_on_remove = "last-used"

c.statusbar.padding["bottom"] = 2
c.statusbar.padding["top"] = 2

SEARX = "127.0.0.1:8888/"
c.url.default_page = SEARX
c.url.start_pages = SEARX

c.window.hide_decoration = True

c.aliases = {
    **c.aliases,
    "wikirace": "spawn --userscript wikirace-init",
    "wikirace-exit": "spawn --userscript wikirace-exit",
}


with config.pattern(SEARX) as p:
    p.hints.selectors['all'].append('label[for^=checkbox]')

