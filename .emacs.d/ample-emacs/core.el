;;Record startup timestamp
(defvar ample-emacs/invokation-time
  (current-time))

;;Define base-path
(defvar ample-emacs/base-path
  "~/.emacs.d/ample-emacs/")

;;Set paths for standalone packages
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/multiple-cursors")
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/ivy")
(add-to-list 'load-path
             "~/.emacs.d/standalone-packages/which-key")

(defun ample-emacs/load-config-file (file-path)
  "Loads the file at the specified file-path if it exists, else ignore"
  (load (concat ample-emacs/base-path
                file-path))
  (load (concat ample-emacs/base-path
                file-path
                "-custom")
        t))

(defun ample-emacs/print-startup-message ()
  "Prints welcome message to the current buffer"
  (princ (concat "Welcome to ample-emacs!"
                 "\n\n"
                 "Today is "
                 (format-time-string "%B %d %Y")
                 "\n\n"
                 "(Started in "
                 (number-to-string (cadr (time-subtract (current-time)
                                                        ample-emacs/invokation-time)))
                 " seconds)")
         (get-buffer-create (current-buffer))))
