(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))
    (el-get-elpa-build-local-recipes)))

(setq el-get-user-package-directory "~/.emacs.d/el-get-user")
(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")

(setq my:el-get-packages
      '(
        el-get
        exec-path-from-shell
        color-theme-solarized

        smooth-scrolling
        smex
        ido-vertical-mode
        ;smart-tab
        ;undo-tree
        ;expand-region

        ;scratch
        ;mic-paren
        smartparens

        auto-complete
        yasnippet
        ;projectile
        ;magit

        ;; C++
        cmake-mode

        ;; Clojure
        ;clojure-mode
        ;cider

        ;; Haskell
        ;haskell-mode
        )
)

(el-get 'sync my:el-get-packages)
