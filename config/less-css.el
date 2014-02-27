(add-lib-path "less-css-mode")

(autoload 'less-css-mode "less-css-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))
