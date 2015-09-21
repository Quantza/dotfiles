(unless (package-installed-p 'rust-mode)
  (package-install 'rust-mode))

(require-package 'rust-mode)

(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))