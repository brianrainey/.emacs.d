;; Function that copies path of current buffer to clipboard
(defun copy-path ()
  "Copies the current file's full path to the clipboard."
  (interactive)
  (when buffer-file-name
    (kill-new buffer-file-name)
    (message buffer-file-name)))
