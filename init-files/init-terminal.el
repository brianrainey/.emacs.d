;; Terminal only settings
(when (eq window-system nil)
  (load-theme 'misterioso t)
  (set-face-background 'highlight "color-235")
  (global-unset-key (kbd "C-t")))
