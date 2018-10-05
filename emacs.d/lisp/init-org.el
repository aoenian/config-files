;;;; 必须在 (require 'org) 之前
;;(setq org-emphasis-regexp-components
;;      ;; markup 记号前后允许中文
;;      (list (concat " \t('\"{"            "[:nonascii:]")
;;            (concat "- \t.,:!?;'\")}\\["  "[:nonascii:]")
;;            " \t\r\n,\"'"
;;            "."
;;            1))

(require 'org)

;; 启用markdown导出选项
(eval-after-load "org"
  '(require 'ox-md nil t))

;; (setq org-src-fontify-natively t)
(setq org-src-fontify-natively t
    org-src-tab-acts-natively t
    org-confirm-babel-evaluate nil
    org-edit-src-content-indentation 0)


(setq org-agenda-files '("~/org"))

(provide 'init-org)
