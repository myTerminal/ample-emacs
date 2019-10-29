(defun ae/print-startup-message ()
  "Prints welcome message to the current buffer"
  (princ (concat "Welcome to ample-emacs!"
                 "\n\n"
                 "Today is "
                 (format-time-string "%B %d %Y")
                 "\n\n"
                 "(Started in "
                 (number-to-string (cadr (time-subtract (current-time)
                                                        ae/invokation-time)))
                 " seconds)")
         (get-buffer-create (current-buffer))))
