;; Set paths for standalone packages
(add-to-list 'load-path
             (concat ae/config-root
                     "standalone-packages/multiple-cursors"))
(add-to-list 'load-path
             (concat ae/config-root
                     "standalone-packages/ivy"))
(add-to-list 'load-path
             (concat ae/config-root
                     "standalone-packages/which-key"))

;; Load multiple-cursors
(require 'multiple-cursors)

;; Load ivy, counsel and swiper
(require 'ivy)
(require 'counsel)
(require 'swiper)

;; Start ivy
(ivy-mode 1)
(setq ivy-use-virtual-buffers
      t)

;; Load which-key
(require 'which-key)

;; Start which-key-mode
(which-key-mode)
