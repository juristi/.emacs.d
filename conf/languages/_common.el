;; _common.el --- Configure and enable general development packages.
;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:


(global-flycheck-mode)
(require 'company)
(add-hook 'prog-mode-hook 'company-mode-on)

(require 'lsp-mode)
(require 'company-lsp)
(add-to-list 'company-backends 'company-lsp)

(provide '_common)

;;; _common.el ends here
