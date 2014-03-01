;; ======================================================

;; disable splash screen
(setq inhibit-splash-screen t)

;; turn off toolbar in gui
(if window-system
    (tool-bar-mode 0))

;; make less noise
(setq ring-bell-function 'ignore)

;; Enable copy & paste between emacs and other apps.
(setq x-select-enable-clipboard t)

;; Display line numbers
(global-linum-mode t) 
(setq linum-format "  %d ")

;; Save backup files to temp directory
(setq backup-directory-alist
  `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
  `((".*" ,temporary-file-directory t)))

;; Don't wrap long lines.
(set-default 'truncate-lines t)

;; Hide file menu
(menu-bar-mode -1)

;; ido mode
(require 'ido)
(ido-mode t)

;; color theme
(load-theme 'dichromacy t)

;; default font
(add-to-list 'default-frame-alist '(font . "DejaVu Sans Mono-9"))

;; paren match highlighting
(show-paren-mode 1)

;; Set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq c-basic-indent 2)

;; add marmalade package archives
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
