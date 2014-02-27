(add-lib-path "jshint-mode")

(require 'flymake-jshint)

(add-hook 'js2-mode-hook
     (lambda () (flymake-mode t)))
