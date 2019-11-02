(load (expand-file-name "ample-emacs/core"
			(file-name-directory load-file-name)))
(ae/load-file "config-system")
(ae/load-file "config-packages")
(ae/load-file "config-interface")
(ae/load-file "config-misc")
(ae/load-file "config-key-bindings")
(ae/print-startup-message)
