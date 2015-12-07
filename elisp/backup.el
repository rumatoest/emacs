;; Configure backup to TMP/emacs directory

;;backup-directory-alist '(("." . "~/.saves"))    ; don't litter my fs tree
(setq backup-directory-path (concat temporary-file-directory "emacs"))

(setq backup-directory-alist `((".*" . , backup-directory-path)))
(setq auto-save-file-name-transforms `((".*" ,backup-directory-path t)))

(setq
   backup-by-copying t      ; don't clobber symlinks
   delete-old-versions t
   kept-new-versions 2
   kept-old-versions 2
   version-control t       ; use versioned backups
   )
