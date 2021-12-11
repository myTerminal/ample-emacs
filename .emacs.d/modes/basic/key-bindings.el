(ae/bind-keys '(
                ;; Buffer/Window management
                ("C-x b" . ivy-switch-buffer)
                ("C-x C-f" . counsel-find-file)
                ("C-x C-r" . counsel-recentf)
                ;; Text-editing
                ("C-}" . mc/mark-next-like-this)
                ("C-{" . mc/mark-previous-like-this)
                ("C-|" . mc/mark-all-like-this)
                ("M-y" . counsel-yank-pop)
                ("C-s" . swiper)
                ("<f5>" . ae/reload-current-file)
                ;; Misc
                ("M-x" . counsel-M-x))
              global-map)
