;;; _go.el --- Go lang specific configurations

;; This file is not part of GNU Emacs
;;; Commentary:
;;; Code:


(require 'go-mode)


(add-hook 'go-mode-hook (lambda ()
                          (setf tab-width 2)
                          (add-hook 'before-save-hook 'gofmt nil t)
                          (add-hook 'before-save-hook 'delete-trailing-whitespace nil t)))
(add-hook 'go-mode-hook #'lsp)

(provide '_go)
;;; _go.el ends here
