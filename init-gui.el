;; GUI Specific settings

;; Frame size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 146) (height . 46)))

;; MouseWheel!
(setq mouse-wheel-scroll-amount '(2 ((shift) . 4) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

;; CUA mode for fuck sake!
(cua-mode t)
(setq cua-auto-tabify-rectangles nil)
(transient-mark-mode 1)
(setq cua-keep-region-after-copy t)

;; on Mac, there's always a menu bar drown, don't have it empty
(if (eq system-type 'darwin)
  (menu-bar-mode t))
