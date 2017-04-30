;; DEFINE COMMON FUNCTIONS

(defun load-directory (directory)
  "Load recursively all `.el' files in DIRECTORY."
  (dolist (element (directory-files-and-attributes directory nil nil nil))
    (let* ((path (car element))
           (fullpath (concat directory "/" path))
           (isdir (car (cdr element)))
           (ignore-dir (or (string= path ".") (string= path ".."))))
      (cond
       ((and (eq isdir t) (not ignore-dir))
        (load-directory fullpath))
       ((and (eq isdir nil) (string= (substring path -3) ".el"))
        (load (file-name-sans-extension fullpath)))))))

;; CONFIGURE PACKAGES
(require 'package)
; list the repositories  ;;
(setq package-archives '(("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")
			 ("gnu" . "http://elpa.gnu.org/packages/")))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)

;;(package-refresh-contents)
(when (not package-archive-contents)
    (package-refresh-contents))

;; Instal package if not available
(defun ensure-packages-installed (packages)
  (dolist (p packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; SETUP PATHS
(add-to-list 'load-path (concat user-emacs-directory "lisp"))
(load (concat user-emacs-directory "loaddefs.el"))
;; configs to loa
(load (concat user-emacs-directory "config.el"))
(ini-load-all)

;; no start screen
;; alternative to: alias emacs='emacs --no-splash'
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(line-move-visual t)
 '(rust-rustfmt-bin "~/.cargo/bin/rustfmt")
 '(speedbar-show-unknown-files t)
 '(tool-bar-mode nil))

(custom-set-faces
 (if (not window-system) '(default ((t (:background "nil"))))) ; Fix ugly blue color in terminal mode
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
