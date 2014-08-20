(setq load-path  (cons (expand-file-name "~/.emacs-lisp/") load-path))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(guess-style-guesser-alist (quote ((indent-tabs-mode . guess-style-guess-tabs-mode))))
 '(indent-tabs-mode nil)
 '(deft-text-mode (quote markdown-mode))
 '(linum-format "%4d "))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'color-theme)

(global-linum-mode 1)

(ido-mode 1)
(menu-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)

(require 'whitespace)
(setq whitespace-style '(face tabs lines-tail trailing))
(whitespace-mode t)

;; Default tab size
(setq default-tab-width 2)

;; Coding style preferences.
(require 'google-coding-style)

;; Load in smart tabs (indent with hard tabs, indent with spaces) when we need
;; to edit code written by evil people.
(require 'smarttabs)

;; Go mode.
(require 'go-mode-load)

;; Gofmt
(add-hook 'before-save-hook #'gofmt-before-save)

;; Markdown major mode
(autoload 'markdown-mode "markdown-mode.el" "Mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
