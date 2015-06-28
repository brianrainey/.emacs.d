;; Disable splash screen
(setq inhibit-splash-screen t)

;; Make less noise
(setq ring-bell-function 'ignore)

;; Enable copy & paste between emacs and other apps.
(setq x-select-enable-clipboard t)

;; Backup directory
(setq backup-directory-alist `(("." . "~/.saves")))

;; Display line numbers
(global-linum-mode t)
(setq linum-format "  %d ")

;; Hide menu bar
(menu-bar-mode -1)

;; Don't wrap long lines.
(set-default 'truncate-lines t)

;; Paren match highlighting
(show-paren-mode 1)

;; Set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq c-basic-indent 2)
(setq js-indent-level 2)

;; Remove extra whitespace on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; ido mode
(require 'ido)
(ido-mode t)

;; Additional config files
(add-to-list 'load-path "~/.emacs.d/init-files/")
(load-library "init-terminal")
(load-library "init-gui")
(load-library "init-osx")
(load-library "init-windows")
(load-library "init-linux")
(load-library "init-packages")
(load-library "init-functions")
(load-library "init-filetypes")
