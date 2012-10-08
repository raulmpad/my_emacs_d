;; rinari
;; Interactively Do Things (highly recommended, but not strictly required)
(require 'ido)
(ido-mode t)
     
;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)
(add-hook 'ruby-mode-hook
          (lambda ()
            (defadvice ruby-mode-set-encoding
              (around ruby-mode-set-encoding-disable activate) nil)))

;;autocomplete
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)
;; Rsense
(setq rsense-home "/Users/raul/.dotfiles/emacs/plugins/rsense-0.3")
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)
 
;; Rsense + Autocomplete
(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

;; Ruby-electric
(require 'ruby-electric)
(add-hook 'ruby-mode-hook 'ruby-electric-mode)

;; yasnippets
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;rails-reloaded
(setq load-path (cons (expand-file-name "~/.emacs.d/rails-reloaded") load-path))
  (require 'rails-autoload)

(require 'rvm)
(rvm-use-default) ;; use rvm's default ruby for the current Emacs session
