(when (configuration-layer/layer-usedp 'avendael)
  (defun avendael/config-character-coding-system ()
    (prefer-coding-system 'utf-8)
    (set-default-coding-systems 'utf-8)
    (setq locale-coding-system 'utf-8)
    (set-terminal-coding-system 'utf-8)
    (set-keyboard-coding-system 'utf-8)
    (set-selection-coding-system 'utf-8)
    (if (boundp 'buffer-file-coding-system)
        (setq-default buffer-file-coding-system 'utf-8)
      (setq buffer-file-coding-system 'utf-8))
    (setq current-language-environment "UTF-8"))

  (defun avendael/config-company ()
    (spacemacs|use-package-add-hook company
      :post-config
      (let ((map company-active-map))
        (define-key map (kbd "C-n") 'company-select-next)
        (define-key map (kbd "C-p") 'company-select-previous))
      (setq company-minimum-prefix-length 1)))

  (defun avendael/config-yaml ()
    (spacemacs|use-package-add-hook yaml-mode
      :post-config
      (add-to-list 'auto-mode-alist '("\\.sls\\'" . yaml-mode))))

  (defun avendael/config-ediff ()
    (setq ediff-window-setup-function 'ediff-setup-windows-plain)
    (setq ediff-split-window-function
          (lambda (&optional arg)
            (if (> (frame-width) 80)
                (split-window-horizontally arg)
              (split-window-vertically arg)))))

  (defun avendael/config-dired ()
    (add-hook 'dired-mode-hook
              (lambda ()
                (let ((name (buffer-name)))
                  (if (not (string-match ":dired$" name))
                      (rename-buffer (concat name ":dired") t)))))
    (add-hook 'dired-mode-hook
              (lambda ()
                (define-key dired-mode-map (kbd "^")
                  (lambda () (interactive) (find-alternate-file ".."))))))

  (defun avendael/config-javascript ()
    (setq js2-mode-show-parse-errors nil)
    (setq js2-highlight-external-variables nil)
    (setq js2-bounce-indent-p nil)
    (setq js2-basic-offset 2))

  (defun avendael/config-multiterm ()
    (defun term-send-ctrl-space ()
      (interactive)
      (term-send-raw-string "\C- "))

    (setq term-bind-key-alist
          '(("<tab>" . term-send-tab)
            ("C-c C-c" . term-interrupt-subjob)
            ("C-c C-e" . term-send-esc)
            ("C-SPC" . term-send-ctrl-space)
            ("C-p" . term-send-up)
            ("C-n" . term-send-down)
            ("C-s" . isearch-forward)
            ("C-r" . term-send-reverse-search-history)
            ("C-m" . term-send-return)
            ("C-y" . term-paste)
            ("M-f" . term-send-forward-word)
            ("M-b" . term-send-backward-word)
            ("M-o" . term-send-backspace)
            ("M-M" . term-send-forward-kill-word)
            ("M-N" . term-send-backward-kill-word)
            ("<C-backspace>" . term-send-backward-kill-word)
            ("M-," . term-send-raw)
            ("M-." . comint-dynamic-complete))))
)
