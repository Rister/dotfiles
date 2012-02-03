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
(setq ibuffer-default-sorting-mode 'major-mode)

;; hippie-expand
(global-set-key (kbd "M-/")
		'hippie-expand)
