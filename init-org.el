;; init-org.el


;; Org-mode LaTeX fragment toggling
(use-package org-fragtog
  :hook (org-mode . org-fragtog-mode)
  :config
  (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5)))

