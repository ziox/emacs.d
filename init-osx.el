;; Mac specific settings

;; Sets paths from shell in OS X
(exec-path-from-shell-initialize)

(setq ns-right-alternate-modifier nil)

;; GUI fonts
(when (display-graphic-p)
  (set-face-attribute 'default nil :font "-apple-PragmataPro-medium-normal-normal-*-20-*-*-*-m-0-iso10646-"))

;;
;; Add some keybindings (for ergonomic reason!)
;;

(global-set-key (kbd "s-p") 'smex)
(global-set-key (kbd "s-P") 'smex-major-mode-commands)

(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<left>") 'back-to-indentation)
