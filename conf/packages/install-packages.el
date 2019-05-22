;; install-packages.el ---  Verify that all wanted packages are installed

;; This file is not part of GNU Emacs

;;; Commentary:

;;; Code:

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))
(package-initialize)

(defvar my-wanted-packages
  '(better-defaults
    company
    company-go
    company-lsp
    counsel
    counsel-projectile
    counsel-tramp
    diminish
    dockerfile-mode
    editorconfig
    elm-mode
    elpy
    ensime
    flatui-dark-theme
    flycheck
    git-gutter
    go-mode
    ivy
    ivy-yasnippet
    js2-mode
    js2-refactor
    json-mode
    lsp-mode
    lsp-python
    lsp-ui
    magit
    paredit
    projectile
    undo-tree
    yaml-mode
    yasnippet
    yasnippet-snippets)
  "Packages that should be installed after start-up.")

(dolist (pkg my-wanted-packages)
  (unless (package-installed-p pkg)
    (package-install pkg)))

(provide 'install-packages)

;;; install-packages.el ends here
