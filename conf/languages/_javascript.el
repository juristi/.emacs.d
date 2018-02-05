;; _javascript.el
;;
;; Javascript specific packages and configurations

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(provide '_javascript)

;; End of file
