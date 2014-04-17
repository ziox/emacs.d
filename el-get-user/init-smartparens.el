;;;;;;;;;
;; global
(require 'smartparens-config)
(smartparens-global-mode t)

;; highlights matching pairs
(show-smartparens-global-mode t)

;;;;;;;;;;;;;;;;;;;;;;;;
;; keybinding management (OS X)

(define-key sp-keymap (kbd "M-<right>") 'sp-forward-sexp)
(define-key sp-keymap (kbd "M-<left>") 'sp-backward-sexp)
(define-key sp-keymap (kbd "C-M-<right>") 'sp-next-sexp)
(define-key sp-keymap (kbd "C-M-<left>") 'sp-previous-sexp)

(define-key sp-keymap (kbd "M-<down>") 'sp-down-sexp)
(define-key sp-keymap (kbd "C-M-<down>") 'sp-backward-down-sexp)
(define-key sp-keymap (kbd "C-M-<up>") 'sp-up-sexp)
(define-key sp-keymap (kbd "M-<up>") 'sp-backward-up-sexp)

(define-key sp-keymap (kbd "s-X") 'sp-kill-sexp)
(define-key sp-keymap (kbd "s-C") 'sp-copy-sexp)

(define-key sp-keymap (kbd "C-S-<right>") 'sp-forward-slurp-sexp)
(define-key sp-keymap (kbd "C-S-<left>") 'sp-forward-barf-sexp)
(define-key sp-keymap (kbd "C-M-<left>") 'sp-backward-slurp-sexp)
(define-key sp-keymap (kbd "C-M-<right>") 'sp-backward-barf-sexp)

;;;;;;;;;;;;;;;;;;
;; pair management

(sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)

;;; markdown-mode
(sp-with-modes '(markdown-mode gfm-mode rst-mode)
  (sp-local-pair "*" "*" :bind "C-*")
  (sp-local-tag "2" "**" "**")
  (sp-local-tag "s" "```scheme" "```")
  (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

;;; tex-mode latex-mode
(sp-with-modes '(tex-mode plain-tex-mode latex-mode)
  (sp-local-tag "i" "\"<" "\">"))

;;; html-mode
(sp-with-modes '(html-mode sgml-mode)
  (sp-local-pair "<" ">"))

;;; lisp modes
(sp-with-modes sp--lisp-modes
  (sp-local-pair "(" nil :bind "C-("))
