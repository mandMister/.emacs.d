;; init-org.el

;; Themes and Modeline
(use-package doom-themes
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-bluloco-dark t)
  (doom-themes-org-config))

(use-package doom-modeline
  :init (doom-modeline-mode 1))

;; Tree-sitter for syntax highlighting
(use-package tree-sitter
  :hook ((c-mode c++-mode glsl-mode makefile-mode) . tree-sitter-mode)
  :config
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs
  :after tree-sitter)

