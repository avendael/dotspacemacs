(defvar avendael-packages
  '(
    alchemist
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
(defun avendael/init-pretty-mode ()
  (use-package pretty-mode
    :init
    (global-pretty-mode t)))

(defun avendael/init-perspectives ()
  (use-package perspective
    :init
    (progn
      (require 'persp-projectile)
      (projectile-persp-bridge helm-projectile))))

(defun avendael/init-projectile ()
  (use-package projectile
    :init
    (setq projectile-switch-project-action 'helm-projectile)))
