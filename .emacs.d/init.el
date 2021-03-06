;; Initialize root
(defvar ae/config-root
  (file-name-directory load-file-name))

(defun ae/start-basic ()
  "Loads basic configs"
  (ae/load-file "basic/misc")
  (ae/load-file "basic/packages")
  (ae/load-file "basic/key-bindings"))

(defun ae/start-standard ()
  "Loads standard configs"
  (ae/load-file "standard/misc")
  (ae/load-file "standard/packages")
  (ae/load-file "standard/key-bindings"))

(defun ae/start ()
  "Loads core and then conditionally loads configs"
  (load (expand-file-name "ample-emacs/core"
			              ae/config-root))
  (ae/start-basic)
  (if (display-graphic-p)
      (ae/start-standard))
  (ae/print-startup-message))

;; Start
(ae/start)
