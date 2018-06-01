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
(load-theme 'flatui-dark t)
(set-face-attribute 'default nil :height 90)

(global-undo-tree-mode)

(require 'better-defaults)
(require 'generic-conf)
(require 'languages)

(let ((local-conf-file (expand-file-name "local.el" user-emacs-directory)))
  (when (file-readable-p local-conf-file)
    (load-file local-conf-file)))

;;; init.el ends here
