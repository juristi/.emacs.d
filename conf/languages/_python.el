;;; _python.el --- Python specific configurations

;; This file is not part of GNU Emacs
;;; Commentary:
;;; Code:

(elpy-enable)

(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(add-hook 'elpy-mode-hook 'flycheck-mode)

(require 'lsp-python)
(add-hook 'python-mode-hook #'lsp-python-enable)
(add-hook 'python-mode-hook #'electric-pair-local-mode)

(provide '_python)
;;; _python.el ends here
