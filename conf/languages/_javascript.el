;; _javascript.el --- Javascript specific packages and configurations

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))

(add-hook 'js2-mode-hook #'electric-pair-local-mode)
(add-hook 'js2-mode-hook #'js2-refactor-mode)

(js2r-add-keybindings-with-prefix "C-c C-r")

;; Tuned configuration for Projectile NPM project type
(require 'projectile)
(let ((npm-executable (or (executable-find "pnpm")
                          (executable-find "npm"))))
  (when npm-executable
    (projectile-register-project-type 'npm '("package.json")
                                      :configure (format "%s install" npm-executable)
                                      :test (format "%s test" npm-executable)
                                      :run (format "%s start" npm-executable)
                                      :test-prefix "test_")))

(provide '_javascript)

;;; _javascript.el ends here
