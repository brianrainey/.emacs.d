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

;; Set tab width
(setq-default indent-tabs-mode nil)
(setq default-tab-width 2)
(setq c-basic-indent 2)
(setq js-indent-level 2)

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
  (server-start)
  (set-face-font 'default "Consolas-10"))

;; OSX only settings
(when (eq window-system 'ns)
  (set-default-font "Menlo-13"))

;; Terminal only settings
(when (eq window-system nil)
  (load-theme 'misterioso t))

;; Unset C-\ ... I want that for tmux
(global-unset-key (kbd "C-\\"))

;; Function that copies path of current buffer to clipboard
(defun copy-path ()
  "Copies the current file's full path to the clipboard."
  (interactive)
  (when buffer-file-name
    (kill-new buffer-file-name)
    (message buffer-file-name)))

;; Give it a key binding
(global-unset-key (kbd "C-c C-p"))
(global-set-key (kbd "C-c C-p") 'copy-path)

;; dash.el
(add-to-list 'load-path "~/.emacs.d/packages/dash.el")

;; pkg-info
(add-to-list 'load-path "~/.emacs.d/packages/pkg-info.el")

;; paredit
(add-to-list 'load-path "~/.emacs.d/packages/paredit")
(autoload 'paredit-mode "paredit" "Minor mode for S-expressions" t)

;; clojure-mode 
(add-to-list 'load-path "~/.emacs.d/packages/clojure-mode")
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))
(add-hook 'clojure-mode-hook 'paredit-mode)

;; cider
(add-to-list 'load-path "~/.emacs.d/packages/cider")
(require 'cider)

;; markdown-mode
(add-to-list 'load-path "~/.emacs.d/packages/markdown-mode")
(autoload 'markdown-mode "markdown-mode" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;; p4.el
(add-to-list 'load-path "~/.emacs.d/packages/p4.el")
(require 'p4)
