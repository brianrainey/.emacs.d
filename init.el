;; ======================================================

;; Disable splash screen
(setq inhibit-splash-screen t)

;; Make less noise
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

;; Paren match highlighting
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)

;; Set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq c-basic-indent 2)

;; GUI only settings
(when window-system
  (tool-bar-mode 0)
  (load-theme 'dichromacy t))

;; Linux only settings
(when (eq window-system 'x)
  (add-to-list 'default-frame-alist 
               '(font . "DejaVu Sans Mono-10")))

;; Windows only settings
(when (eq window-system 'w32)
  (set-face-font 'default "Consolas-10"))

;; OSX only settings
(when (eq window-system 'ns)
  (set-default-font "Menlo-13"))

;; Terminal only settings
(when (not window-system)
  (load-theme 'misterioso t))

;; Add marmalade package archives
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; list and install some packages
(defvar my-packages '(clojure-mode
                      nrepl
                      paredit))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Clojure editing (including paredit)
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-hook 'clojure-mode-hook 'paredit-mode)
