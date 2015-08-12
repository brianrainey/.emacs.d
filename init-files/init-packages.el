;; Melpa package repository

;; If the OS has an environment variable for the proxy server, use it.
(let '(proxy (getenv "HTTP_PROXY"))
  (when (not (null proxy))
    (setq url-proxy-services '("http" . proxy))))

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
