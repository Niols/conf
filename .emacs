; .emacs
; Nicolas Jeannerod <niols@niols.net>

; colors
(defun terminal-init-screen ()
  "Terminal initialization function for screen-256color."
  (load "term/xterm")
  (xterm-register-default-colors)
  (tty-set-up-initial-frame-faces))

; personal load path
(add-to-list 'load-path "~/.emacs.d/lisp/")

; fill-column-indicator
(require 'fill-column-indicator)
(setq fci-rule-column 80) 
(setq fci-rule-width 1)
(setq fci-rule-color "red")
(setq fci-rule-character ?│)
(setq fci-rule-character-color "red")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

; html-mode
(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))

; js-mode
(add-to-list 'auto-mode-alist '("\\.json\\'" . js-mode))

; web-mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

; markdown-mode
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

; beluga-mode
(require 'beluga-mode)
(add-to-list 'auto-mode-alist '("\\.bel\\'" . beluga-mode))

; options
(custom-set-variables
 '(column-number-mode t)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(show-paren-mode t))
(custom-set-faces)
(put 'upcase-region 'disabled nil)
