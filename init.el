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

;; Don't wrap long lines.
(toggle-truncate-lines)

;; ido mode
(require 'ido)
(ido-mode t)

;; color theme
(load-theme 'misterioso t)

;; paren match highlighting
(show-paren-mode 1)

;; Set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq c-basic-indent 2)

;; ======================================================

;; add marmalade package archives
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; clojure mode
(when (not (package-installed-p 'clojure-mode))
  (package-install 'clojure-mode))

;; nrepl
(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))

;; eldoc mode for clojure / nrepl
(add-hook 'nrepl-interaction-mode-hook
  'nrepl-turn-on-eldoc-mode)

;; rainbow brackets
(when (not (package-installed-p 'rainbow-delimiters))
  (package-install 'rainbow-delimiters))

(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

;; ======================================================
