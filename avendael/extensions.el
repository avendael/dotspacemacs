(defvar avendael-pre-extensions
  '(
    ;; pre extension avendaels go here
    )
  "List of all extensions to load before the packages.")

(defvar avendael-post-extensions
  '(
    ;; post extension avendaels go here
    )
  "List of all extensions to load after the packages.")

;; For each extension, define a function avendael/init-<extension-avendael>
;;
;; (defun avendael/init-my-extension ()
;;   "Initialize my extension"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package
