;; Set up package management
(load (expand-file-name "init-packages.el" user-emacs-directory))

;; General settings
(load (expand-file-name "init-general.el" user-emacs-directory))

;; Keybindings
(load (expand-file-name "init-keybindings.el" user-emacs-directory))

;; Evil mode configuration
(load (expand-file-name "init-evil.el" user-emacs-directory))

;; LSP configuration
(load (expand-file-name "init-lsp.el" user-emacs-directory))

;; Autocompletion
(load (expand-file-name "init-completion.el" user-emacs-directory))

;; UI settings
(load (expand-file-name "init-ui.el" user-emacs-directory))

;; Projectile configuration
(load (expand-file-name "init-projectile.el" user-emacs-directory))

;; Org-mode settings
(load (expand-file-name "init-org.el" user-emacs-directory))

;; Terminal emulator
(load (expand-file-name "init-term.el" user-emacs-directory))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("9f297216c88ca3f47e5f10f8bd884ab24ac5bc9d884f0f23589b0a46a608fe14" "88f7ee5594021c60a4a6a1c275614103de8c1435d6d08cc58882f920e0cec65e" "8b148cf8154d34917dfc794b5d0fe65f21e9155977a36a5985f89c09a9669aa0" "9e36779f5244f7d715d206158a3dade839d4ccb17f6a2f0108bf8d476160a221" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
