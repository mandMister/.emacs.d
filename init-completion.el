;; init-org.el

;; Autocompletion
(use-package company
  :after lsp-mode
  :hook (lsp-mode . company-mode)
  :config
  (setq company-idle-delay 0.0)                         ;; No delay in showing suggestions
  (setq company-minimum-prefix-length 1)                ;; Start suggesting after 1 character
  (setq company-show-numbers t)                         ;; Show numbers in completion list
  (setq company-tooltip-align-annotations t)            ;; Align annotations to the right tooltip border
  (setq company-dabbrev-downcase nil)                   ;; Keep case sensitivity in completions
  (setq company-backends '((company-capf company-dabbrev-code)))  ;; Prioritize LSP completions
  :bind (:map company-active-map
              ("<tab>" . company-complete-selection)    ;; Accept completion with TAB
              ("C-n" . company-select-next)             ;; Next suggestion
              ("C-p" . company-select-previous)))       ;; Previous suggestion

;; Fuzzy Finder (Ivy and Counsel)
(use-package ivy
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t))

(use-package counsel
  :after ivy
  :config
  (counsel-mode 1))

