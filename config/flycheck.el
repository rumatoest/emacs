;; Flycheck mode
(ensure-packages-installed '(flycheck))

(add-hook 'after-init-hook #'global-flycheck-mode)
