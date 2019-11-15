(defvar ae/config-root
  (file-name-directory load-file-name))
(load (expand-file-name "ample-emacs/core"
			ae/config-root))
(ae/load-file "config-misc")
(ae/load-file "config-packages")
(ae/load-file "config-key-bindings")
(ae/print-startup-message)
