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

;;
;; Add some keybindings (for ergonomic reason!)
;;

(global-set-key (kbd "s-p") 'smex)
(global-set-key (kbd "s-P") 'smex-major-mode-commands)

(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'back-to-indentation)

(define-minor-mode ziox-keys-osx-mode
  "Personal key-bindings for OS X"
  :lighter " ZX"
  :keymap (let ((map (make-sparse-keymap)))
            (define-key map (kbd "s-i") 'previous-line)
            (define-key map (kbd "s-k") 'next-line)
            (define-key map (kbd "s-j") 'left-char)
            (define-key map (kbd "s-l") 'right-char)
            map))
