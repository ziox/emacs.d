(require 'cask "/usr/local/Cellar/cask/0.7.0/cask.el")
(cask-initialize)

;; Keeps ~Cask~ file in sync with the packages
;; that you install/uninstall via ~M-x list-packages~
;; https://github.com/rdallasgray/pallet
(require 'pallet)

;; Theme
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'zenburn t)
(set-cursor-color "firebrick")

;; Disable menu, tool bar and scroll bar
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; No splash screen
(setq inhibit-splash-screen t)

;; Turn off the fucking bell
(setq ring-bell-function 'ignore)

;; Line and column numbers
(line-number-mode 1)
(column-number-mode 1)

;; Fast echoing
(setq echo-keystrokes 0.02)

;; Tabs and Spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(setq whitespace-style (quote (face trailing tab-mark)))
(set-face-background 'whitespace-trailing "#FF0000")
(global-whitespace-mode)
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Interactive Mode
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil)

;; Disable backup and auto-save
(setq backup-inhibited t)
(setq make-backup-files nil)
(setq auto-save-default nil)

;; I want <RET> to auto indent! WTF!
(global-set-key (kbd "RET") 'newline-and-indent)

;; Overwrite the selection! WTF!
(delete-selection-mode t)

;; C++
(setq-default c-basic-offset 4)
(setq-default c-electric-flag nil)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "k&r")))

;; Load packages settings
(load "~/.emacs.d/init-packages.el")

;; GUI Specific settings
(when (display-graphic-p)
  (load "~/.emacs.d/init-gui.el"))

;; Mac specific settings
(when (eq system-type 'darwin)
  (load "~/.emacs.d/init-osx.el"))
