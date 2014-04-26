;; GUI Specific settings

;; Frame size
(setq initial-frame-alist '((top . 0) (left . 0) (width . 130) (height . 40)))

;; on Mac, there's always a menu bar drown, don't have it empty
(if (eq system-type 'darwin)
  (menu-bar-mode t))
