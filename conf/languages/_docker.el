;; _docker.el --- Docker configuration
;;
;; This file is not part of GNU Emacs

;;; Commentary:
;;; Code:

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide '_docker)

;;; _docker.el ends here
