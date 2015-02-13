(add-to-list 'load-path "~/.emacs.d/lisp/")

(require 'fill-column-indicator)
(setq fci-rule-column 80) 
(setq fci-rule-width 1)
(setq fci-rule-color "red")
(setq fci-rule-character ?│)
(setq fci-rule-character-color "red")
(define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
(global-fci-mode 1)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . html-mode))

(add-to-list 'auto-mode-alist '("\\.json\\'" . js-mode))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

(require 'beluga-mode)
(add-to-list 'auto-mode-alist '("\\.bel\\'" . beluga-mode))

(custom-set-variables
 '(column-number-mode t)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(show-paren-mode t))
(custom-set-faces
 )
(put 'upcase-region 'disabled nil)
