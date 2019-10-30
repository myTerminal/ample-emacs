(defvar ae/my-keyboard-bindings
  '(("C-}" . mc/mark-next-like-this)
    ("C-{" . mc/mark-previous-like-this)
    ("C-|" . mc/mark-all-like-this)
    ("M-x" . counsel-M-x)
    ("C-x b" . ivy-switch-buffer)
    ("C-x C-r" . counsel-recentf)
    ("C-x C-f" . counsel-find-file)
    ("C-s" . swiper)
    ("M-y" . counsel-yank-pop)
    ("<f5>" . ae/reload-current-file)))

(mapc 'ae/assign-function-to-keys
      ae/my-keyboard-bindings)
