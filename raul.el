;; visible bell
(setq visible-bell t)
;;(setq ring-bell-function (lambda () (message "*beep*")))
;; allow selection deletion
(delete-selection-mode t)
;; make sure delete key is delete key
(global-set-key [delete] 'delete-char)
;; turn on the menu bar
(menu-bar-mode 1)
;; have emacs scroll line-by-line
(setq scroll-step 1)
;; set color-theme
(load-theme 'misterioso t)

;; font size
(set-face-attribute 'default nil :height 160)

;;Slime-style navigation of Emacs Lisp source with M-. & M-,
(require 'elisp-slime-nav)
(add-hook 'emacs-lisp-mode-hook (lambda () (elisp-slime-nav-mode t)))

;; Custom themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;(add-to-list 'load-path "$HOME/.emacs.d/elpa/color-theme-6.6.0")
;;(require 'color-theme)
;;(eval-after-load "color-theme"
;;  '(progn
;;     (color-theme-initialize)
;;     (color-theme-hober)))

;; helm
(add-to-list 'load-path "~/.dotfiles/emacs/plugins/helm")
(require 'helm-config)
