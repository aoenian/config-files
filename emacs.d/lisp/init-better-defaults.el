(setq ring-bell-function 'ignore)

;; 更改显示字体大小 16pt
;; http://stackoverflow.com/questions/294664/how-to-set-the-font-size-in-emacs
(set-face-attribute 'default nil :height 160)

(global-auto-revert-mode t)

;; 显示行号
(global-linum-mode t)

;; 遇到比较长的行自动换行
(global-visual-line-mode t)


(abbrev-mode t)
 (define-abbrev-table 'global-abbrev-table '(
                                              ;; signature
                                              ("7ao" "aoenian")
                                              ;; Microsoft
                                              ("8ms" "Macrosoft")
                                              ))

;; 禁止自动生成备份文件
(setq make-backup-files nil)

;; 禁止自动保存
(setq auto-save-default nil)

;; 浏览记录
(recentf-mode 1)			
(setq recentf-max-menu-items 25)


(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;; 选中文字后输入字符则会替换掉选中的字符
(delete-selection-mode t)


(provide 'init-better-defaults)
