;; Linux only settings
(when (eq window-system 'x)
  (add-to-list 'default-frame-alist
               '(font . "DejaVu Sans Mono-10")))
