;;; _yaml.el --- YAML specific configurations

;; This file is not part of GNU Emacs
;;; Commentary:
;;; Code:

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

(provide '_yaml)
;;; _yaml.el ends here
