;; _common-prog.el --- Configure and enable general development packages.
;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:


(global-flycheck-mode)
(add-hook 'prog-mode-hook #'electric-pair-local-mode)

(require 'company)
(add-hook 'prog-mode-hook 'company-mode-on)

(require 'lsp)
(require 'lsp-clients)

(provide '_common-prog)

;;; _common-prog.el ends here
