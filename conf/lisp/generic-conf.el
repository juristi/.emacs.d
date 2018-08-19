;;; generic-conf.el --- A miscellanious compilation of snippets and tweaks.

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(require '_ivy)

;; By http://endlessparentheses.com/implementing-comment-line.html
(defun comment-or-uncomment-line-or-region (n)
  "Comment or uncomment current line and leave point after it.
With positive prefix, apply to N lines including current one.
With negative prefix, apply to -N lines above.
If region is active, apply to active region instead."
  (interactive "p")
  (if (use-region-p)
      (comment-or-uncomment-region
       (region-beginning) (region-end))
    (let ((range
           (list (line-beginning-position)
                 (goto-char (line-end-position n)))))
      (comment-or-uncomment-region
       (apply #'min range)
       (apply #'max range)))
    (forward-line 1)
    (back-to-indentation)))

(define-key prog-mode-map (kbd "C-;") 'comment-or-uncomment-line-or-region)

(defalias 'yes-or-no-p 'y-or-n-p)

(global-set-key (kbd "C-c a") 'org-agenda)
(global-git-gutter-mode +1)

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

(provide 'generic-conf)

;;; generic-conf.el ends here

