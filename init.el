;; Load configurations from subdir
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

(load-directory "~/.emacs.d/elisp")

;; emacs config

;; http://www.emacswiki.org/emacs/InteractivelyDoThings
(require 'ido) 
(ido-mode t)

; alternative to: alias emacs='emacs --no-splash'
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)


;; PACKAGES TO INSTALL
(setq package-list '(drag-stuff dirtree jedi magit))

;; You might already have this line
(require 'package)
; list the repositories containing them
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.org/packages/")))

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize) ;; You might already have this line

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))



;CONFIGURE PACKAGES
(global-set-key (kbd "C-c d") 'duplicate-current-line-or-region)

(drag-stuff-global-mode t)
;(add-to-list 'drag-stuff-except-modes 'conflicting-mode)

(global-set-key [f8] 'neotree-toggle)

(autoload 'dirtree "dirtree" "Add directory to tree view" t)

;JEDI 
;http://tkf.github.io/emacs-jedi/latest/#keybinds

;(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)  ;autocmplete only
;add hokey for jedi compile
(add-hook 'python-mode-hook '(lambda() (define-key 'python-mode-map (kbd "<C-tab>") 'jedi:complete)))
(put 'upcase-region 'disabled nil)
