;; ======================================================

;; disable splash screen
(setq inhibit-splash-screen t)

;; turn off toolbar in gui
(if window-system
    (tool-bar-mode 0))

;; make less noise
(setq ring-bell-function 'ignore)

;; ido mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; color theme
(load-theme 'misterioso t)

;; paren match highlighting
(show-paren-mode 1)

;; paredit
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;; rainbow brackets
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)

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

;; paredit
(when (not (package-installed-p 'paredit))
  (package-install 'paredit))

;; rainbow brackets
(when (not (package-installed-p 'rainbow-delimiters))
  (package-install 'rainbow-delimiters))

;; ======================================================

