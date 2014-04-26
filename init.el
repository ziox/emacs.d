(load "~/.emacs.d/init-packages.el")

;; Sets paths from shell in OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Frame size in GUI
(when (display-graphic-p)
  (setq initial-frame-alist '((top . 0) (left . 0) (width . 130) (height . 40))))

;; Solarized!
(load-theme 'solarized-dark t)

;; Disable menu, tool bar and scroll bar
(unless (eq system-type 'darwin)
  ;; on mac, there's always a menu bar drown, don't have it empty
  (menu-bar-mode -1))
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; No splash screen
(setq inhibit-splash-screen t)

;; Line and column numbers
(line-number-mode 1)
(column-number-mode 1)

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
(setq auto-save-default nil)

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; I want <RET> to auto indent! WTF!
(global-set-key (kbd "RET") 'newline-and-indent)

;; C++
(setq-default c-basic-offset 4)
(setq-default c-electric-flag nil)
(setq c-default-style '((java-mode . "java")
                        (awk-mode . "awk")
                        (other . "k&r")))

;; Mac specific settings
(when (eq system-type 'darwin)
  (load "~/.emacs.d/init-osx.el"))
