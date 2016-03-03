;; Some editor functionality extensions binded to hotkeys

;; IDO
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido) 
(ido-mode t)

(require 'duplicate-line)
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

(require 'reverse-input) ; Just add provided function to the scope

;; FROM PACKAGES
;; Drag via alt up/down
(ensure-packages-installed '(drag-stuff))
(drag-stuff-global-mode t)
;(add-to-list 'drag-stuff-except-modes 'conflicting-mode)

