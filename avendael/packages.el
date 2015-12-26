(defvar avendael-packages
  '(
    editorconfig
    jsx-mode
    pretty-mode
    react-snippets
    yaml-mode
    monokai-theme
    restclient
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

(defun avendael/init-yaml-mode ()
  (use-package yaml-mode
    :config
    (add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))))
