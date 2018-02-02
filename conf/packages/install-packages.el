;; packages.el
;;
;; Verify that all wanted packages are installed
;; This file is not part of GNU Emacs

(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
	     '("marmalade" . "https://marmalade-repo.org/packages/"))

(when (not package-archive-contents)
  (package-refresh-contents))
(package-initialize)

(defvar my-wanted-packages
  '(better-defaults
    magit)
  "Packages that should be installed after start-up.")

(dolist (pkg my-wanted-packages)
  (when (not (package-installed-p pkg))
    (package-install pkg)))

(provide 'install-packages)

;; End of file
