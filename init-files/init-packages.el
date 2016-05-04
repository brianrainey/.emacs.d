;; Melpa package repository
(require 'package)
(add-to-list 'package-archives
  '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

;; Projectile support for projects
(require 'projectile)
(projectile-global-mode)

;; Projectile keyboard shortcuts
(global-set-key (kbd "C-.") 'helm-projectile-find-file)
(global-set-key (kbd "C-,") 'helm-projectile-grep)

;; Helm completion for Projectile
(helm-projectile-on)
(helm-autoresize-mode)
