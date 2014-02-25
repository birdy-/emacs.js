(add-lib-path "dircolors")
(require 'dircolors)

(add-lib-path "smooth-scrolling")
(require 'smooth-scrolling)

(menu-bar-mode -1)

;;highlight current line
(global-hl-line-mode 1)
(set-face-background 'hl-line "#111")

;;set cursor colour
(set-cursor-color "yellow")
