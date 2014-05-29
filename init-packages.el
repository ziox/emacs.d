(require 'use-package)

(use-package auto-complete
  :init
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  :config
  (progn
    (require 'auto-complete-config)
    (ac-config-default)
    (setq ac-auto-start 4)
    (setq ac-auto-show-menu 2.0)
    (ac-set-trigger-key "TAB")
    (ac-set-trigger-key "<tab>")))

(use-package cmake-mode
  :mode (("CMakeLists\\.txt\\'" . cmake-mode)
         ("\\.cmake\\'" . cmake-mode)))

(use-package expand-region
  :bind ("C-x C-p" . er/expand-region))

(use-package helm
  :init (require 'helm-config)
  :bind ("s-t" . helm-mini))

(use-package ido-vertical-mode
  :init
  (progn
    (ido-vertical-mode 1)
    (setq ido-vertical-define-keys 'C-n-C-p-up-down)
    (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)))

(use-package smartparens
  :init (smartparens-global-mode t))

(use-package smex
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command)))

(use-package smooth-scrolling
  :init (setq smooth-scroll-margin 2))


