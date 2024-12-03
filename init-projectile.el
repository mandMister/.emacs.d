;; init-projectile.el

;; Projectile for project management
(use-package projectile
  :config
  (projectile-mode 1)
  (setq projectile-completion-system 'ivy)
  (setq projectile-indexing-method 'native)
  (setq projectile-globally-ignored-directories
        (append '(".git" ".cache" "build*") projectile-globally-ignored-directories)))

(use-package counsel-projectile
  :after (projectile counsel)
  :config (counsel-projectile-mode))

