;; init-org.el

(use-package general
  :config
  (general-evil-setup t)

  ;; Window navigation (similar to Vim splits)
  (general-define-key
   :states '(normal)
   "C-h" 'windmove-left
   "C-j" 'windmove-down
   "C-k" 'windmove-up
   "C-l" 'windmove-right)

  ;; Resize windows using Alt + h/j/k/l
  (general-define-key
   :states '(normal)
   "M-h" 'shrink-window-horizontally
   "M-j" 'shrink-window
   "M-k" 'enlarge-window
   "M-l" 'enlarge-window-horizontally)

  ;; Kill all buffers except *scratch* and *vterm*
  (defun kill-all-but-scratch ()
    "Kill all buffers except *scratch* and *vterm*."
    (interactive)
    (dolist (buffer (buffer-list))
      (unless (or (string-equal (buffer-name buffer) "*scratch*")
                  (string-equal (buffer-name buffer) "*vterm*"))
        (kill-buffer buffer))))
  (general-define-key
   :states '(normal insert)
   "C-c C-k" 'kill-all-but-scratch)

  ;; Fuzzy find using Ctrl + b
  (general-define-key
   :states '(normal insert)
   "C-b" 'counsel-find-file)

  ;; Projectile command map
  (general-define-key
   :states '(normal insert)
   "C-c p" 'projectile-command-map)

  ;; Exit vterm mode using ESC
  (general-define-key
   :keymaps 'vterm-mode-map
   "<escape>" 'vterm--self-insert))

;; Ensure that vterm's ESC keybinding works with general.el
(add-hook 'vterm-mode-hook
          (lambda ()
            (general-define-key
             :keymaps 'vterm-mode-map
             "<escape>" 'vterm--self-insert)))

