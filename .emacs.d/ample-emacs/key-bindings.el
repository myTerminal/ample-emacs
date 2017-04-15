(defvar ample-emacs--my-keyboard-bindings 
  '(("<f5>" . ample-emacs-reload-current-file)))

(defun ample-emacs-apply-keyboard-bindings (pair)
  "Apply keyboard-bindings for supplied list of key-pair values"
  (global-set-key (kbd (car pair))
                  (cdr pair)))

(mapc 'ample-emacs-apply-keyboard-bindings
      ample-emacs--my-keyboard-bindings)
