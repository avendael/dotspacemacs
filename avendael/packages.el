(defvar avendael-packages
  '(
    alchemist
    fasd
    pretty-mode
    )
  "List of all packages to install and/or initialize. Built-in packages
which require an initialization must be listed explicitly in the list.")

(defvar avendael-excluded-packages 
  '(ac-ispell
    neotree
    )
  "List of packages to exclude.")

;; Package init
(defun avendael/init-fasd ()
  (use-package fasd
    :init
    (setq fasd-completing-read-function 'helm--completing-read-default)
    :config
    (progn
      (global-fasd-mode 1)
      (evil-leader/set-key "fa" 'fasd-find-file))))

(defun avendael/init-pretty-mode ()
  (use-package pretty-mode
    :init
    (global-pretty-mode t)))
