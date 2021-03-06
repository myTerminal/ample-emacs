(defvar ae/config-root
  (file-name-directory load-file-name))
(load (expand-file-name "ample-emacs/core"
			ae/config-root))
(ae/load-file "standard/misc")
(ae/load-file "standard/packages")
(ae/load-file "standard/key-bindings")
(ae/print-startup-message)
