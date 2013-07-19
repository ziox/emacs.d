(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-user/init")
(el-get 'sync)

(setq my:el-get-packages
      '(
	smooth-scrolling
	powerline
	smex
	magit
	yasnippet
	org-mode
	undo-tree
	smart-tab
	scratch
	evil
	auto-complete
	)
)
	
(el-get 'sync my:el-get-packages)

;; Interactive Mode
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-enable-last-directory-history nil)

;; Disable menu bar
(menu-bar-mode -1)

;; Disable backup and auto-save
(setq backup-inhibited t)
(setq auto-save-default nil)

;; Smooth scrolling
(setq smooth-scroll-margin 2)

;; I want <RET> to auto indent! WTF!
(global-set-key (kbd "RET") 'newline-and-indent)

;; Smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Magit
(global-set-key (kbd "C-x g") 'magit-status)

;; YASnippet
(yas-global-mode 1)

;; Org-mode
(add-hook 'org-mode-hook
	  (lambda ()
	    (local-set-key (kbd "RET") 'org-return-indent)
	    (local-set-key (kbd "C-j") 'org-return)))

;; Undo Tree
(global-undo-tree-mode)
