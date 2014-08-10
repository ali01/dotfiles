(setq load-path  (cons (expand-file-name "~/.emacs-lisp/") load-path))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(linum-format " %3d "))

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
(global-whitespace-mode t)
