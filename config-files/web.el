(unless (require 'web-mode nil 'noerror)
    (el-get-install 'web-mode))
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

(defun web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-indent-offset 2)
  (setq web-mode-comment-style 2)

  (define-key evil-normal-state-map (kbd "C-;") 'web-mode-comment-or-uncomment)

  (setq web-mode-extra-snippets
        '(("erb" . (("name" . ("beg" . "end"))))
          ("php" . (("name" . ("beg" . "end"))
                    ("name" . ("beg" . "end"))))
          ))
  (setq web-mode-extra-auto-pairs
        '(("erb" . (("open" "close")))
          ("php" . (("open" "close")
                    ("open" "close")))
          ))
)

(add-hook 'web-mode-hook 'web-mode-hook)