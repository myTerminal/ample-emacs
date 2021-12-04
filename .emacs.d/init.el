(require 'cl-lib)

;; Initialize root
(defvar ae/config-root
  (file-name-directory load-file-name))

(defun ae/start ()
  "Loads core and then conditionally loads configs."
  (cl-flet* ((start-basic ()
                          (ae/load-file "modes/basic/misc")
                          (ae/load-file "modes/basic/packages")
                          (ae/load-file "modes/basic/key-bindings"))
             (start-standard ()
                             (ae/load-file "modes/standard/misc")
                             (ae/load-file "modes/standard/packages")
                             (ae/load-file "modes/standard/key-bindings")))
    (load (expand-file-name "core"
			                ae/config-root))
    (start-basic)
    (if (display-graphic-p)
        (start-standard))
    (ae/print-startup-message)))

;; Start
(ae/start)
