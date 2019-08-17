;; _lisp.el --- Lisp specific configurations

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:
;;; -*- lexical-binding: t -*-

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)
(add-hook 'sly-mode-hook              #'enable-paredit-mode)

(require 'sly)
(defun enable-slime-style-navigation-in-sly-repl ()
  "Enable Slime style REPL navigation (<c-up>, <c-down> also in Sly."
  (define-key sly-mrepl-mode-map (kbd "<C-up>") #'sly-mrepl-previous-input-or-button)
  (define-key sly-mrepl-mode-map (kbd "<C-down>") #'sly-mrepl-next-input-or-button))
(add-hook 'sly-mrepl-mode-hook #'enable-slime-style-navigation-in-sly-repl)

(let ((lispexe (or (executable-find "sbcl")
                   (executable-find "ccl64"))))
  (when lispexe (setf inferior-lisp-program lispexe)))

;; (slime-setup '(slime-fancy slime-company))
(setf sly-net-coding-system 'utf-8-unix)

(provide '_lisp)

;;; _lisp.el ends here
