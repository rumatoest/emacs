(defun duplicate-current-line-or-region (arg)
  "Duplicates the current line or region ARG times.
If there's no region, the current line will be duplicated. However, if
there's a region, all lines that region covers will be duplicated."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active
        (exchange-point-and-mark))
    (setq end (line-end-position))
    (let ((region (buffer-substring-no-properties beg end)))
      (dotimes (i arg)
        (goto-char end)
        (newline)
        (insert region)
        (setq end (point)))
      (goto-char (+ origin (* (length region) arg) arg)))))

(defun delete-current-line-or-region (arg)
  "Delete current line or region from fist line start to last line end."
  (interactive "p")
  (let (beg end (origin (point)))
    (if (and mark-active (> (point) (mark)))
        (exchange-point-and-mark))
    (setq beg (line-beginning-position))
    (if mark-active (exchange-point-and-mark))
    (setq end (line-end-position))
    (delete-region beg end)
    (setq beg (line-beginning-position))
    (setq end (line-end-position))
    (let ((skip (skip-chars-forward "\n" (+ 1 end))))
        (if (> skip 0) (delete-region beg (+ end 1))))
    ))

(provide 'duplicate-line)
;;; duplicate-line.el ends here
