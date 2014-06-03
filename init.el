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

;; Keep packages in their own folder
(add-to-list 'load-path "~/.emacs.d/packages")

;; Clojure editing (including paredit)
;; (git clone https://github.com/clojure-emacs/clojure-mode/)
;; (git clone http://mumble.net/~campbell/git/paredit.git/)
(autoload 'clojure-mode "clojure-mode/clojure-mode" "A major mode for Clojure" t)
(autoload 'paredit-mode "paredit/paredit" "Minor mode for S-expressions" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-hook 'clojure-mode-hook 'paredit-mode)

;; Markdown editing
;; (http://jblevins.org/projects/markdown-mode/markdown-mode.el)
(autoload 'markdown-mode "markdown-mode/markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
