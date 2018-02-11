;;; _python.el --- Python specific configurations

;; This file is not part of GNU Emacs
;;; Commentary:
;;; Code:

(elpy-enable)

(setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
(add-hook 'elpy-mode-hook 'flycheck-mode)

(provide '_python)
;;; _python.el ends here