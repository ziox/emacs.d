(require 'redo+)

(defvar ergo-mbp-keymap (make-sparse-keymap)
  "Ergo-MBP minor mode keymap.")

(define-key ergo-mbp-keymap (kbd "s-p") 'smex)
(define-key ergo-mbp-keymap (kbd "s-P") 'smex-major-mode-commands)

;; Buffers
(define-key ergo-mbp-keymap (kbd "s-o") 'ido-find-file)
(define-key ergo-mbp-keymap (kbd "s-s") 'save-buffer)
(define-key ergo-mbp-keymap (kbd "s-n") 'make-frame)
(define-key ergo-mbp-keymap (kbd "s-w") 'kill-this-buffer)
(define-key ergo-mbp-keymap (kbd "s-W") 'delete-frame)
(define-key ergo-mbp-keymap (kbd "s-q") 'save-buffers-kill-emacs)
(define-key ergo-mbp-keymap (kbd "s-a") 'mark-whole-buffer)

;; Text
;; TODO: maybe add cut/copy/paste?
(define-key ergo-mbp-keymap (kbd "s-d") 'kill-whole-line)
(define-key ergo-mbp-keymap (kbd "s-z") 'undo)
(define-key ergo-mbp-keymap (kbd "s-Z") 'redo)
(define-key ergo-mbp-keymap (kbd "<M-backspace>") 'backward-kill-word)
(define-key ergo-mbp-keymap (kbd "<M-kp-delete>") 'kill-word)
(define-key ergo-mbp-keymap (kbd "<s-backspace>") 'backward-kill-line)
(define-key ergo-mbp-keymap (kbd "<s-kp-delete>") 'kill-line)
(define-key ergo-mbp-keymap (kbd "<s-return>") 'textmate-next-line)

;; Movements
(define-key ergo-mbp-keymap (kbd "<C-left>") 'left-word)
(define-key ergo-mbp-keymap (kbd "<C-right>") 'right-word)
(define-key ergo-mbp-keymap (kbd "<M-left>") 'left-word)
(define-key ergo-mbp-keymap (kbd "<M-right>") 'right-word)
(define-key ergo-mbp-keymap (kbd "<M-up>") 'backward-paragraph)
(define-key ergo-mbp-keymap (kbd "<M-down>") 'forward-paragraph)
(define-key ergo-mbp-keymap (kbd "<s-left>") 'move-beginning-of-line)
(define-key ergo-mbp-keymap (kbd "<s-right>") 'move-end-of-line)
(define-key ergo-mbp-keymap (kbd "<s-up>") 'beginning-of-buffer)
(define-key ergo-mbp-keymap (kbd "<s-down>") 'end-of-buffer)

;; Search
(define-key ergo-mbp-keymap (kbd "s-f") 'isearch-forward)
(define-key ergo-mbp-keymap (kbd "s-g") 'isearch-repeat-forward)
(define-key ergo-mbp-keymap (kbd "s-G") 'isearch-repeat-backward)
(define-key ergo-mbp-keymap (kbd "s-C-f") 'occur)
;(define-key ergo-mbp-keymap (kbd "s-F") 'ack-and-a-half)
(define-key ergo-mbp-keymap (kbd "s-F") 'ag-project)

(define-minor-mode ergo-mbp-mode
  "Ergonomic key-bindings for MacBookPro"
  nil
  :lighter " MBP"
  :global t
  :keymap ergo-mbp-keymap)

(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))

(defun textmate-next-line ()
  "Inserts an indented newline after the current line and moves the point to it."
  (interactive)
  (end-of-line)
  (newline-and-indent))
