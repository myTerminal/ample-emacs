(require 'cl-lib)

;; Initialize root
(defvar ae/config-root
  (file-name-directory load-file-name))

(defun ae/start ()
  "Loads core and then conditionally loads configs."
  (cl-flet* ((start-basic ()
                          (ae/load-file "basic/misc")
                          (ae/load-file "basic/packages")
                          (ae/load-file "basic/key-bindings"))
             (start-standard ()
                            (ae/load-file "standard/misc")
                            (ae/load-file "standard/packages")
                            (ae/load-file "standard/key-bindings")))
    (load (expand-file-name "ample-emacs/core"
			                ae/config-root))
    (start-basic)
    (if (display-graphic-p)
        (start-standard))
    (ae/print-startup-message)))

;; Start
(ae/start)
