(load "~/.emacs.d/config-files/better-defaults")

;;;; EVIL ;;;;; BEGIN
(require-package 'evil)

(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)

(require 'evil)
(evil-mode t)

(load "~/.emacs.d/config-files/vim-keymaps")
;;;; EVIL ;;;;; END

(require-package 'color-theme)
(require 'color-theme)
(color-theme-initialize)
(color-theme-railscasts)

;;;;;;;;; powerline
(require-package 'powerline)
(require 'powerline)
(powerline-center-theme)

;;;;;;;;; multiterm
(require-package 'multi-term)
(setq multi-term-program "/bin/zsh")

(add-hook 'term-mode-hook
	  (lambda()
            (global-set-key (kbd "C-c t") 'multi-term-next)
            (global-set-key (kbd "C-c T") 'multi-term)
))

;;;;;;;;;; Writeroom
(require-package 'writeroom-mode)
(require 'writeroom-mode)

;;;;;;;;;; TRAMP
(require 'tramp)
(setq tramp-default-method "scp")

;;;;;;;;;; flycheck
(require-package 'flycheck)
(require 'flycheck)
(flycheck-mode)

;;;;;;;;;; PYTHON
(load "~/.emacs.d/config-files/python")

;;;;; MAGIT
(require-package 'magit)
(require 'magit)

;;;; AUTOCOMPLETION ;;;; BEGIN
(require-package 'yasnippet)
(require 'cc-mode)
(require 'yasnippet)

;(yas-global-mode t)
;;;; AUTOCOMPLETION ;;;; END

;;;; ORG ;;;;; BEGIN
(require-package 'org)
(require-package 'org-plus-contrib)
(require 'org)
;;;; ORG ;;;;; END

;;;; ELSCREEN ;; BEGIN
(require-package 'elscreen)
(require 'elscreen)
(elscreen-start)
(load "~/.emacs.d/config-files/evil-elscreen")
;;;; ELSCREEN ;; END

;;;;; ECB;;; begin
(load "~/.emacs.d/config-files/ecb")
;;;;; ECB;;; end

;;;;; AUCTEX ;;; BEGIN
(load "~/.emacs.d/config-files/auctex")
;;;;; AUCTEX ;;; END

;;;;; webstuffs
(load "~/.emacs.d/config-files/web")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["black" "red" "green" "yellow" "cyan" "magenta" "cyan" "white"])
 '(ecb-layout-window-sizes (quote (("cppide" (ecb-methods-buffer-name 0.16847826086956522 . 0.22641509433962265) (ecb-speedbar-buffer-name 0.16847826086956522 . 0.37735849056603776) (ecb-history-buffer-name 0.16847826086956522 . 0.37735849056603776)) ("left13" (ecb-directories-buffer-name 0.20652173913043478 . 0.9811320754716981)))))
 '(ecb-options-version "2.40")
 '(inhibit-startup-screen t)
 '(spice-output-local "Gnucap")
 '(spice-simulator "Gnucap")
 '(spice-waveform-viewer "Gwave"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
