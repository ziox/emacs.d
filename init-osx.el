;; Mac specific settings

;; Sets paths from shell in OS X
(exec-path-from-shell-initialize)

(setq ns-right-alternate-modifier nil)

;; GUI fonts
(when (display-graphic-p)
  (set-frame-font "Source Code Pro-18" nil t))

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(setq ns-pop-up-frames nil)

(load "~/.emacs.d/ergo-mbp.el")
(ergo-mbp-mode 1)
