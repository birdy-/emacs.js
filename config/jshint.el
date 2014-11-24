(add-lib-path "jshint-mode")

(require 'flymake-jshint)

(add-hook 'js2-mode-hook
          (lambda () (flymake-mode t)))

; Nope, I want my copies in the system temp dir.
(setq flymake-run-in-place nil)
;; This lets me say where my temp dir is.
(setq temporary-file-directory "~/.emacs.d/tmp/")
