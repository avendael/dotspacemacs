(setq evil-shift-width 2)
;; Workaround for ssh config ControlMaster auto and ControlPersist yes
(setq tramp-default-method "scpx")
;; VC extensions should follow symlinks
(setq vc-follow-symlinks 1)
;; Obliterate trailing whitespaces before saving
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(add-hook 'conf-space-mode-hook 'nlinum-mode)
(add-hook 'magit-post-refresh-hook 'diff-hl-magit-post-refresh)
(add-hook 'term-mode-hook
          (lambda ()
            (add-to-list 'term-bind-key-alist '("C-SPC" . term-send-raw))))
(add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))

(avendael/config-company)
(avendael/config-yaml)
(avendael/config-dired)
(avendael/config-character-coding-system)
