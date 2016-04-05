;; RUST MODE 
;; https://github.com/rust-lang/rust-mode
(ensure-packages-installed '(rust-mode))

(autoload 'rust-mode "rust-mode" "Rust language mode" t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(custom-set-variables
 '(rust-rustfmt-bin "~/.cargo/bin/rustfmt"))

;; Flycheck for Rust
(ensure-packages-installed '(flycheck-rust))
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
