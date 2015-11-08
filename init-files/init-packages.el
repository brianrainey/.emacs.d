;; Melpa package repository
(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

;; Projectile support for projects
(require 'projectile)
(projectile-global-mode)

;; Helm completion for Projectile
(helm-projectile-on)
(helm-autoresize-mode)
