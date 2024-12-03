;; init-org.el

;; LSP Configuration
(use-package lsp-mode
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Keymap prefix for LSP commands
  :hook ((c-mode c++-mode) . lsp)   ;; Enable LSP in C/C++ modes
  :commands lsp
  :config
  (setq lsp-clients-clangd-args '("--clang-tidy" "-j=8" "--completion-style=detailed"))
  (setq lsp-enable-snippet t)        ;; Enable LSP snippets support
  (setq lsp-idle-delay 0.1)          ;; Short delay before the language server activates
  (setq lsp-prefer-capf t))          ;; Use completion-at-point functions provided by LSP

;; LSP UI for better visuals
(use-package lsp-ui
  :after lsp-mode
  :hook (lsp-mode . lsp-ui-mode)
  :commands lsp-ui-mode
  :config
  (setq lsp-ui-sideline-enable t)        ;; Show information in the sidebar
  (setq lsp-ui-sideline-show-hover t)    ;; Show hover documentation
  (setq lsp-ui-doc-enable t)             ;; Enable documentation popups
  (setq lsp-ui-doc-position 'at-point)   ;; Popup at point
  (setq lsp-ui-doc-show-with-cursor t))  ;; Show doc with cursor movement

;; Java LSP Support
(use-package lsp-java
    :after lsp
    :config
    (add-hook 'java-mode-hook #'lsp))

;; Haskell Mode and HLS LSP Support
(use-package haskell-mode
  :hook ((haskell-mode . interactive-haskell-mode) ;; Enable interactive mode
         (haskell-mode . lsp))                    ;; Enable LSP for Haskell
  :config
  (setq haskell-stylish-on-save t                 ;; Format code on save
        haskell-tags-on-save t))                 ;; Update tags on save

(use-package lsp-haskell
  :after lsp-mode
  :config
  (setq lsp-haskell-server-path "haskell-language-server"
        lsp-haskell-formatting-provider "ormolu"))
