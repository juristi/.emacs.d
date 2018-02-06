;;; _ivy.el --- Ivy configuration

;;
;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:
(ivy-mode 1)
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)

(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")

(counsel-projectile-mode)

(provide '_ivy)
;;; _ivy.el ends here
