;;; _elm.el --- Elm specific configurations

;; This file is not part of GNU Emacs
;;; Commentary:
;;; Code:


(require 'elm-mode)

(add-hook 'elm-mode-hook 'electric-pair-local-mode)

(when (featurep 'company)
  (add-to-list 'company-backends 'company-elm))

(provide '_elm)
;;; _elm.el ends here
