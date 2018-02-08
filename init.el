;; init.el ---  Personal Emacs configration entry point.
;;
;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(load custom-file)
(package-initialize)

(setq column-number-mode t
      inhibit-splash-screen t)

(let ((default-directory (expand-file-name "conf" user-emacs-directory)))
  (normal-top-level-add-subdirs-to-load-path))

(require 'install-packages)
(load-theme 'zenburn t)
(set-face-attribute 'default nil :height 90)

(global-undo-tree-mode)

(require 'better-defaults)
(require 'local)
(require 'languages)

;;; init.el ends here
