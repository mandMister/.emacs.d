;; init-org.el

;; General Emacs settings
(setq inhibit-startup-screen t)       ;; Disable the startup screen
(setq initial-scratch-message nil)    ;; Remove initial message
(tool-bar-mode -1)                    ;; Disable the toolbar
(scroll-bar-mode -1)                  ;; Disable the scrollbar
(menu-bar-mode -1)                    ;; Disable the menu bar
(setq ring-bell-function 'ignore)     ;; Disable the bell
(setq use-dialog-box nil)             ;; Disable dialog boxes
(column-number-mode t)                ;; Show column numbers
(global-display-line-numbers-mode t)  ;; Enable line numbers globally
;; (setq display-line-numbers-type 'relative) ;; Relative line numbers
(setq-default indent-tabs-mode nil)   ;; Use spaces instead of tabs
(setq-default tab-width 4)            ;; Set tab width to 4
(setq c-basic-offset 4)               ;; Set C/C++ indentation to 4 spaces
(setq make-backup-files nil)          ;; Disable backup files
(setq auto-save-default nil)          ;; Disable auto-save
(setq select-enable-clipboard t)      ;; Use system clipboard
(defalias 'yes-or-no-p 'y-or-n-p)     ;; Use 'y' or 'n' instead of 'yes' or 'no'
(setq-default cursor-type 'bar)       ;; Set cursor to bar
(set-frame-font "Caskaydia Mono Nerd Font-12" nil t)
(set-face-attribute 'default nil :height 130)
(setq frame-resize-pixelwise t)

;; Autopairs (automatic closing of brackets and quotes)
(use-package smartparens
  :hook (prog-mode . smartparens-mode))

;; Flycheck for syntax checking
(use-package flycheck
  :init (global-flycheck-mode))

;; Clang Format for code formatting
(use-package clang-format
  :bind (:map c-mode-base-map
              ("C-c C-f" . clang-format-buffer))
  :hook ((c-mode c++-mode) . clang-format-on-save))

(defun clang-format-on-save ()
  "Add clang-format to before-save-hook in the current buffer."
  (add-hook 'before-save-hook 'clang-format-buffer nil t))

;; Which-key for discovering keybindings
(use-package which-key
  :config
  (which-key-mode))

;; Yasnippet for code snippets
(use-package yasnippet
  :config
  (yas-global-mode 1))

