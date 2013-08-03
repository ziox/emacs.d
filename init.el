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
        color-theme-solarized
        smooth-scrolling
        smex
        magit
        yasnippet
        undo-tree
        smart-tab
        scratch
        auto-complete
        expand-region
        autopair
        projectile
        )
)

(el-get 'sync my:el-get-packages)

;; Solarized!
(load-theme 'solarized-dark t)

;; Tabs and Spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq whitespace-style (quote (face trailing tab-mark)))
(set-face-background 'whitespace-trailing "#FF0000")
(global-whitespace-mode)

;; Mac specific settings
(when (eq system-type 'darwin)
  (setq ns-right-alternate-modifier nil)
  ;; GUI fonts
  (when (display-graphic-p)
    (set-face-attribute 'default nil :font "-apple-PragmataPro-medium-normal-normal-*-20-*-*-*-m-0-iso10646-")))

;; Interactive Mode
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil)

;; Disable menu, tool bar and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Disable backup and auto-save
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Smooth scrolling
(setq smooth-scroll-margin 2)

;; I want <RET> to auto indent! WTF!
(global-set-key (kbd "RET") 'newline-and-indent)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; YASnippet
(yas-global-mode 1)

;; Org-mode
(add-hook 'org-mode-hook
          (lambda ()
            (local-set-key (kbd "RET") 'org-return-indent)
            (local-set-key (kbd "C-j") 'org-return)))

;; Undo Tree
(global-undo-tree-mode)

;; Expand Region
(global-set-key (kbd "C-x C-p") 'er/expand-region)

;; Autopair
(autopair-global-mode)
