;; Record startup timestamp
(defvar ae/invokation-time
  (current-time))

;; Define base-path
(defvar ae/base-path
  (file-name-directory load-file-name))

(defun ae/load-file (file-path)
  "Loads the specified file and also it's customized version, if it exists."
  (load (concat ae/base-path
                file-path))
  (load (concat ae/base-path
                file-path
                "-custom")
        t))

;; Load lib.el
(ae/load-file "lib")
