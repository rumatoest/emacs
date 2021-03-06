;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "csv-mode" "csv-mode.el" (22261 3907 196718
;;;;;;  951000))
;;; Generated autoloads from csv-mode.el

(autoload 'csv-mode "csv-mode" "\
Major mode for editing files of comma-separated value type.

CSV mode is derived from `text-mode', and runs `text-mode-hook' before
running `csv-mode-hook'.  It turns `auto-fill-mode' off by default.
CSV mode can be customized by user options in the CSV customization
group.  The separators are specified by the value of `csv-separators'.

CSV mode commands ignore blank lines and comment lines beginning with
the value of `csv-comment-start', which delimit \"paragraphs\".
\"Sexp\" is re-interpreted to mean \"field\", so that `forward-sexp'
\(\\[forward-sexp]), `kill-sexp' (\\[kill-sexp]), etc. all apply to fields.
Standard comment commands apply, such as `comment-dwim' (\\[comment-dwim]).

If `font-lock-mode' is enabled then separators, quoted values and
comment lines are highlighted using respectively `csv-separator-face',
`font-lock-string-face' and `font-lock-comment-face'.

The user interface (UI) for CSV mode commands is similar to that of
the standard commands `sort-fields' and `sort-numeric-fields', except
that if there is no prefix argument then the UI prompts for the field
index or indices.  In `transient-mark-mode' only: if the region is not
set then the UI attempts to set it to include all consecutive CSV
records around point, and prompts for confirmation; if there is no
prefix argument then the UI prompts for it, offering as a default the
index of the field containing point if the region was not set
explicitly.  The region set automatically is delimited by blank lines
and comment lines, and the number of header lines at the beginning of
the region given by the value of `csv-header-lines' are skipped.

Sort order is controlled by `csv-descending'.

CSV mode provides the following specific keyboard key bindings:

\\{csv-mode-map}

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))

;;;***

;;;### (autoloads nil "git-commit" "git-commit.el" (22121 23524 519487
;;;;;;  497000))
;;; Generated autoloads from git-commit.el

(autoload 'git-commit-mode "git-commit" "\
Major mode for editing git commit messages.
This mode helps with editing git commit messages both by
providing commands to do common tasks, and by highlighting the
basic structure of and errors in git commit messages.
Commands:\\<git-commit-map>
\\[git-commit-commit]   `git-commit-commit'  Finish editing and commit
\\[git-commit-signoff]   `git-commit-signoff'   Insert a Signed-off-by header
\\[git-commit-ack]   `git-commit-ack'   Insert an Acked-by header
\\[git-commit-test]   `git-commit-test'   Insert a Tested-by header
\\[git-commit-review]   `git-commit-review'   Insert a Reviewed-by header
\\[git-commit-cc]   `git-commit-cc'   Insert a Cc header
\\[git-commit-reported]   `git-commit-reported'   Insert a Reported-by header
Turning on git commit calls the hooks in `git-commit-mode-hook'.

\(fn)" t nil)

(when (boundp 'session-mode-disable-list) (add-to-list 'session-mode-disable-list 'git-commit-mode))

(setq auto-mode-alist (append auto-mode-alist '(("COMMIT_EDITMSG" . git-commit-mode) ("NOTES_EDITMSG" . git-commit-mode) ("PULLREQ_EDITMSG" . git-commit-mode) ("TAG_EDITMSG" . git-commit-mode) ("MERGE_MSG" . git-commit-mode) ("BRANCH_DESCRIPTION" . git-commit-mode))))

;;;***

;;;### (autoloads nil "gitattributes-mode" "gitattributes-mode.el"
;;;;;;  (22120 410 104650 660000))
;;; Generated autoloads from gitattributes-mode.el

(autoload 'gitattributes-mode "gitattributes-mode" "\
A major mode for editing .gitattributes files.
\\{gitattributes-mode-map}

\(fn)" t nil)

(dolist (pattern '("/\\.gitattributes\\'" "/\\.git/info/attributes\\'" "/git/attributes\\'")) (add-to-list 'auto-mode-alist (cons pattern #'gitattributes-mode)))

;;;***

;;;### (autoloads nil "gitconfig-mode" "gitconfig-mode.el" (22120
;;;;;;  7414 924434 930000))
;;; Generated autoloads from gitconfig-mode.el

(autoload 'gitconfig-mode "gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads nil "gitignore-mode" "gitignore-mode.el" (22120
;;;;;;  439 0 0))
;;; Generated autoloads from gitignore-mode.el

(autoload 'gitignore-mode "gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads nil nil ("duplicate-line.el" "reverse-input.el")
;;;;;;  (22265 13517 835691 259000))

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
