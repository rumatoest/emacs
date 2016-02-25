;; JEDI 
;; http://tkf.github.io/emacs-jedi/latest/#keybinds
(ensure-packages-installed '(jedi))

(add-hook 'python-mode-hook 'jedi:setup)
(add-hook 'python-mode-hook 'jedi:ac-setup)  ;autocmplete

;; add hokey for jedi compile
(add-hook 'python-mode-hook '(lambda() (define-key 'python-mode-map (kbd "<C-tab>") 'jedi:complete)))
(put 'upcase-region 'disabled nil)
