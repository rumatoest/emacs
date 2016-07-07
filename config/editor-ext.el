;; Some editor functionality extensions binded to hotkeys

;; IDO
;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido) 
(ido-mode t)
(ido-everywhere t)
(setq ido-enable-flex-matching t)
(setq ido-use-filename-at-point nil)
(setq ido-auto-merge-work-directories-length -1)
(setq ido-use-virtual-buffers t)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Recently opened files
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

(require 'duplicate-line)
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)
(global-set-key (kbd "C-c k") 'delete-current-line-or-region)

(require 'reverse-input) ; Just add provided function to the scope

;; FROM PACKAGES
;; Drag via alt up/down
(ensure-packages-installed '(drag-stuff))
(drag-stuff-global-mode t)
;(add-to-list 'drag-stuff-except-modes 'conflicting-mode)

;;NEOTREE
(ensure-packages-installed '(neotree))
(global-set-key [f8] 'neotree-toggle)
;;(ensure-packages-installed `(neotree))
;; (autoload 'dirtree "dirtree" "Add directory to tree view" t)

;;SIDEBAR in windows mode
(ensure-packages-installed '(sr-speedbar))
(require 'sr-speedbar)
(global-set-key (kbd "s-s") 'sr-speedbar-toggle)

;;TABBAR
(ensure-packages-installed '(tabbar))

