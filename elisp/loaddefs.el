;;; loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "../elib/gitconfig-mode" "../elib/gitconfig-mode.el"
;;;;;;  (22120 7414 924434 930000))
;;; Generated autoloads from ../elib/gitconfig-mode.el

(autoload 'gitconfig-mode "../elib/gitconfig-mode" "\
A major mode for editing .gitconfig files.

\(fn)" t nil)

(dolist (pattern '("/\\.gitconfig\\'" "/\\.git/config\\'" "/git/config\\'" "/\\.gitmodules\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitconfig-mode)))

;;;***

;;;### (autoloads nil "../elib/gitignore-mode" "../elib/gitignore-mode.el"
;;;;;;  (22120 439 0 0))
;;; Generated autoloads from ../elib/gitignore-mode.el

(autoload 'gitignore-mode "../elib/gitignore-mode" "\
A major mode for editing .gitignore files.

\(fn)" t nil)

(dolist (pattern (list "/\\.gitignore\\'" "/\\.git/info/exclude\\'" "/git/ignore\\'")) (add-to-list 'auto-mode-alist (cons pattern 'gitignore-mode)))

;;;***

;;;### (autoloads nil "../elib/markdown-mode" "../elib/markdown-mode.el"
;;;;;;  (22121 11750 833264 574000))
;;; Generated autoloads from ../elib/markdown-mode.el

(autoload 'markdown-mode "../elib/markdown-mode" "\
Major mode for editing Markdown files.

\(fn)" t nil)

(dolist (pattern (list "\\.text\\'" "\\.markdown\\'" "\\.md\\'")) (add-to-list 'auto-mode-alist (cons pattern 'markdown-mode)))

;;     (autoload 'markdown-mode "markdown-mode"
;;        "Major mode for editing Markdown files" t)
;;     (add-to-list 'auto-mode-alist '( . markdown-mode))
;;     (add-to-list 'auto-mode-alist '( . markdown-mode))
;;     (add-to-list 'auto-mode-alist '( . markdown-mode))


(autoload 'gfm-mode "../elib/markdown-mode" "\
Major mode for editing GitHub Flavored Markdown files.

\(fn)" t nil)

;;;***

(provide 'loaddefs)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; loaddefs.el ends here
