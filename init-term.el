;; init-term.el

;; Terminal emulator within Emacs
(use-package vterm
  :commands vterm
  :config
  (setq vterm-max-scrollback 10000))

