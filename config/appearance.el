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

(add-hook 'js2-mode-hook '(lambda ()
                            (setq fill-column 80)
                            (highlight-lines-matching-regexp ".\\{81\\}" "hi-blue-b")
                           )
          )

(add-hook 'python-mode-hook '(lambda ()
                               (setq fill-column 80)
                               (highlight-lines-matching-regexp ".\\{81\\}" "hi-blue-b")
                           )
          )
