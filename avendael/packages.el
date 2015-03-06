(defvar avendael-packages
  '(
    alchemist
    editorconfig
    gh-md
    jsx-mode
    pretty-mode
    react-snippets
    yaml-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar avendael-excluded-packages
  '(ac-ispell
    neotree
    )
  "List of packages to exclude.")

;; Package init
(defun avendael/init-pretty-mode ()
  (use-package pretty-mode
    :init
    (global-pretty-mode t)))
