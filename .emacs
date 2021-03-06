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

;; (require 'color-theme)

(global-linum-mode 1)

(ido-mode 1)
(menu-bar-mode -1)

(defalias 'yes-or-no-p 'y-or-n-p)
(setq make-backup-files nil)

(require 'whitespace)
(setq whitespace-style '(face tabs lines-tail trailing))
(whitespace-mode t)

;; Default tab size
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)

;; Coding style preferences.
(require 'google-coding-style)

;; Load in smart tabs (indent with hard tabs, indent with spaces) when we need
;; to edit code written by evil people.
(require 'smarttabs)

;; Codesearch
(require 'codesearch)

;; helm
;; (add-to-list 'load-path "/usr/local/src/helm")
;; (require 'helm-config)
;; (require 'helm-ls-git)
;; (global-set-key (kbd "C-x t") 'helm-ls-git-ls)

;; Go mode.
(require 'go-mode-load)

;; Gofmt
(add-hook 'before-save-hook #'gofmt-before-save)

;; Golint
(add-to-list 'load-path (concat (getenv "GOPATH")
                                "/src/github.com/golang/lint/misc/emacs"))
(require 'golint nil 'noerror)

;; Markdown major mode
(autoload 'markdown-mode "markdown-mode.el" "Mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))


;; Google Protobuf major mode
; (require 'protobuf-mode)
; (add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
