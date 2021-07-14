;; Startup
(setq initial-buffer-choice
      t)
(setq initial-scratch-message
      "")

;; Interface
(menu-bar-mode -1)
(ido-mode t)

;; Text editing
(electric-pair-mode)
(show-paren-mode)
(global-hl-line-mode -1)
(setq-default indent-tabs-mode
              nil)
(set-default 'cursor-type
             'hbar)
(setq kill-whole-line
      t)
(prefer-coding-system 'utf-8-unix)

;; Package archives and 'customize'
(setq custom-file
      (concat ae/config-root
              "custom.el"))
(setq package-user-dir
      (concat ae/config-root
              "elpa"))
(setq package--init-file-ensured
      t)

;; Misc
(winner-mode t)
(windmove-default-keybindings)
