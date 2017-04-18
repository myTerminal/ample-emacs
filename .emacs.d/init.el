;Record startup timestamp
(defvar ample-emacs/invokation-time
  (current-time))

;Load configuration files
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/multiple-cursors")
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/which-key")
(load-file "~/.emacs.d/ample-emacs/packages.el")
(load-file "~/.emacs.d/ample-emacs/interface.el")
(load-file "~/.emacs.d/ample-emacs/misc.el")
(load-file "~/.emacs.d/ample-emacs/key-bindings.el")

;Print welcome message
(princ (cl-concatenate 'string
                       "Startup completed in "
                       (number-to-string (cadr (time-subtract (current-time)
                                                              ample-emacs/invokation-time)))
                       " seconds\n\n"
                       "Welcome to ample-emacs!\n\n"
                       "Today's date: "
                       (format-time-string "%B %d %Y"))
       (get-buffer-create (current-buffer)))
