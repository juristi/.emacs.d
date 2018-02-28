;; _javascript.el --- Javascript specific packages and configurations

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js2-mode-hook 'electric-pair-local-mode)

(provide '_javascript)

;;; _javascript.el ends here
