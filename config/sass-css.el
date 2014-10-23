(add-lib-path "haml-mode")
(autoload 'haml-mode "haml-mode" nil t)


(add-lib-path "sass-mode")
(autoload 'sass-mode "sass-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.scss\\'" . sass-mode))
