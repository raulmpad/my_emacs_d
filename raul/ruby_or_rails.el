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

;;; rhtml mode
(add-to-list 'load-path "~/.dotfiles/emacs/plugins/rhtml")
(require 'rhtml-mode)


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

(add-hook 'rinari-minor-mode-hook 'rvm-activate-corresponding-ruby)

(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(remove-hook 'prog-mode-hook 'esk-turn-on-idle-highlight-mode)

;;(autoload 'project-mode "project-mode" "Project Mode" t)

;; rspec mode
(add-to-list 'load-path "/Users/raul/.dotfiles/emacs/plugins/rspec-mode")
(require 'rspec-mode)

(defadvice rspec-compile (around rspec-compile-around)
  "Use BASH shell for running the specs because of ZSH issues."
  (let ((shell-file-name "/bin/bash"))
    ad-do-it))
(ad-activate 'rspec-compile)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(rspec-use-bundler-when-possible nil)
 '(rspec-use-rake-flag nil)
 '(rspec-use-rvm t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; projectile
(add-hook 'ruby-mode-hook 'projectile-on)

;; Textmate stuff
(add-to-list 'load-path "~/.dotfiles/emacs/plugins/textmate.el")
(require 'textmate)
(textmate-mode)
