;; global lisp
(add-to-list 'load-path "/usr/share/emacs/site-lisp")

;; theme
(require 'color-theme)
(color-theme-initialize)
(color-theme-solarized-dark)

;; Line numbers
(require 'linum)
(global-linum-mode 1)

;; remove gui
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; linux coding style
(defun linux-c-mode ()
  "C mode with adjusted defaults for use with the Linux kernel."
  (interactive)
  (c-mode)
  (c-set-style "K&R")
  (setq tab-width 8)
  (setq indent-tabs-mode t)
  (setq c-basic-offset 8))

(add-to-list 'auto-mode-alist '("\\.c$" . linux-c-mode)) ;; C
(add-to-list 'auto-mode-alist '("\\.h$" . linux-c-mode)) ;; C h
(add-to-list 'auto-mode-alist '("\\.cl$" . linux-c-mode)) ;; OpenCL

;; GLSL
 (autoload 'glsl-mode "glsl-mode" nil t)
 (add-to-list 'auto-mode-alist '("\\.glsl\\'" . glsl-mode))
 (add-to-list 'auto-mode-alist '("\\.vert\\'" . glsl-mode))
 (add-to-list 'auto-mode-alist '("\\.frag\\'" . glsl-mode))
 (add-to-list 'auto-mode-alist '("\\.geom\\'" . glsl-mode))

;; scala-mode
 (add-to-list 'load-path "/usr/share/emacs/scala-mode")
 (require 'scala-mode-auto)

;; lua
 (autoload 'lua-mode "lua-mode" "Lua editing mode." t)
 (add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
 (add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;; haskell
 (load "haskell-mode-autoloads")
 ;; Use notify.el (if you have it installed) at the end of running
 ;; Cabal commands or generally things worth notifying.
 '(haskell-notify-p t)

 ;; To enable tags generation on save.
 '(haskell-tags-on-save t)

 (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
 (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

;; ensime
 (add-to-list 'load-path "/usr/share/ensime/elisp")
 (add-to-list 'exec-path "/usr/share/ensime")
 (require 'ensime)
 (add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; global backup directory
 (setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

;; shift+arrow window
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

;; kill ring
 (require 'browse-kill-ring)
 (browse-kill-ring-default-keybindings)

;; font
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-use-system-font t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight normal :height 100 :width normal)))))
