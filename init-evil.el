;; init-org.el

;; Use Vim keybindings with Evil mode
(use-package evil
  :init
  (setq evil-want-integration t)  ;; Necessary for evil-collection
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode 1))

;; Enhance Evil mode with more keybindings
(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

