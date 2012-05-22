;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;  Standard .emacs stuff on top, custom on the bottom.

(global-font-lock-mode t)
(show-paren-mode 1)

;; ido mode
(ido-mode 1)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; remove startup splash
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)

;; autoindent
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Move Autosaves and Backups
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; Update open files
(global-auto-revert-mode 1)

;; use ibuffer
(require 'ibuffer)
(global-set-key (kbd "C-x C-b")
		'ibuffer-other-window)
(setq ibuffer-default-sorting-mode 'filename/process)

;; hippie-expand
(global-set-key (kbd "M-/")
		'hippie-expand)

;; turn off unnecessary UI elements
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; Show line-number and column-number in the mode line
(line-number-mode 1)
(column-number-mode 1)

;; Uniquify for nice buffer names
(require 'uniquify)
(setq uniquify-buffer-name-style 'post-forward
      uniquify-separator ":")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Begin Custom Section of .emacs file.

;; color-theme
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-oswald)
