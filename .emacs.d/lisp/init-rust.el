;;https://github.com/rust-lang/rust-mode
(require-package 'rust-mode)

;; This associates rust-mode with .rs files
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(provide 'init-rust)
