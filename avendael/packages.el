(defconst avendael-packages
  '(editorconfig
    pretty-mode
    react-snippets
    restclient
    quack
    (ac-ispell :excluded t)
    (neotree :excluded t)))

(defun avendael/init-editorconfig ()
  (use-package editorconfig
    :defer t))

(defun avendael/init-pretty-mode ()
  (use-package pretty-mode
    :init
    (global-pretty-mode t)))

(defun avendael/init-react-snippets ()
  (use-package react-snippets
    :defer t))

(defun avendael/init-restclient ()
  (use-package restclient
    :defer t))

(defun avendael/init-quack ()
  (use-package quack
    :defer t))
