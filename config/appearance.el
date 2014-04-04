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

(defmacro defconstant (symbol initvalue &optional docstring)
  `(defconst ,symbol ,initvalue ,docstring))

(defmacro defparameter (symbol &optional initvalue docstring)
  `(progn
     (defvar ,symbol nil ,docstring)
     (setq   ,symbol ,initvalue)))

(defparameter th-frame-config-register ?°
  "The register which is used for storing and restoring frame
configurations by `th-save-frame-configuration' and
`th-jump-to-register'.")

(defun th-save-frame-configuration (arg)
  "Stores the current frame configuration in register
`th-frame-config-register'. If a prefix argument is given, you
can choose which register to use."
  (interactive "P")
  (let ((register (if arg
                      (read-char "Which register? ")
                    th-frame-config-register)))
    (frame-configuration-to-register register)
    (message "Frame configuration saved in register '%c'."
             register)))

(defun th-jump-to-register (arg)
  "Jumps to register `th-frame-config-register'. If a prefix
argument is given, you can choose which register to jump to."
  (interactive "P")
  (let ((register (if arg
                      (read-char "Which register? ")
                    th-frame-config-register)))
    (jump-to-register register)
    (message "Jumped to register '%c'."
             register)))

(global-set-key (kbd "<f5>")
                'th-save-frame-configuration)
(global-set-key (kbd "<f6>")
                'th-jump-to-register)
