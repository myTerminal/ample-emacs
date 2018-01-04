(defvar ample-emacs--my-keyboard-bindings 
  '(("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("M-x" . counsel-M-x)
    ("C-x b" . ivy-switch-buffer)
    ("C-x C-r" . counsel-recentf)
    ("C-x C-f" . counsel-find-file)
    ("C-s" . swiper)
    ("M-y" . counsel-yank-pop)
    ("<f5>" . ample-emacs-reload-current-file)))

(defun ample-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'ample-emacs-apply-keyboard-bindings
      ample-emacs--my-keyboard-bindings)
