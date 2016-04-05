;; Racer auto complete for Rust
;; https://github.com/phildawes/racer
(require 'cl)

(ensure-packages-installed '(racer company-racer))

;; Assume that all crated installed locally
(setq racer-cmd "~/.cargo/bin/racer")

;; And Rust installed globally
;; (setq racer-rust-src-path "/usr/local/src/rust/src/")

(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'racer-mode-hook #'company-mode)

(global-set-key (kbd "TAB") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)
