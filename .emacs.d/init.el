;;Record startup timestamp
(defvar ample-emacs/invokation-time
  (current-time))

;;Set paths for standalone packages
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/multiple-cursors")
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/ivy")
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/which-key")

;;Load configuration files
(load-file "~/.emacs.d/ample-emacs/system.el")
(load-file "~/.emacs.d/ample-emacs/packages.el")
(load-file "~/.emacs.d/ample-emacs/interface.el")
(load-file "~/.emacs.d/ample-emacs/misc.el")
(load-file "~/.emacs.d/ample-emacs/key-bindings.el")

;;Print welcome message
(princ (concat "Welcome to ample-emacs!"
               "\n\n"
               "Today is "
               (format-time-string "%B %d %Y")
               "\n\n"
               "(Started in "
               (number-to-string (cadr (time-subtract (current-time)
                                                      ample-emacs/invokation-time)))
               " seconds)")
       (get-buffer-create (current-buffer)))
