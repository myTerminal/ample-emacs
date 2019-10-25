(defun ample-emacs-reload-current-file ()
  "Reload the file loaded in current buffer from the disk"
  (interactive)
  (cond (buffer-file-name (progn (find-alternate-file buffer-file-name)
                                 (message "File reloaded")))
        (t (message "You're not editing a file!"))))

;;Disable splash message, start *scratch* buffer by default
(setq initial-buffer-choice 
      t)
(setq initial-scratch-message 
      "")

;;Delete lines along with carriage returns
(setq kill-whole-line
      t)

;;Enforce spaces for indentation, instead of tabs
(setq-default indent-tabs-mode 
              nil)

;;Enable ido-mode
(ido-mode t)

;;Enable show-paren-mode
(show-paren-mode)

;;Enable winner-mode
(winner-mode t)

;;Enable windmove
(windmove-default-keybindings)
