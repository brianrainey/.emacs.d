;; Windows only settings
(when (eq window-system 'w32)
  (server-start)
  (set-face-font 'default "Consolas-10")
  (setenv "PATH"
          (concat
           "C:\\MinGW\\msys\\1.0\\bin;"
           (getenv "PATH"))))
