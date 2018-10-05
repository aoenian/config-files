(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
       	      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个 ELPA 镜像

;; cl - Common Lisp Extension
(require 'cl)

;;add whatever packages you want here
(defvar aoenian/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		smartparens
		;;counsel
		;;popwin
		;; --- Org ---
		htmlize
		;; --- Major Mode ---
		;; js2-mode
		;; --- Minor Mode ---
		;; nodejs-repl
		exec-path-from-shell
		;; --- Themes ---
		monokai-theme
		;; solarized-theme 
		 )  "Default packages")

(setq package-selected-packages aoenian/packages)

(defun aoenian/packages-installed-p ()
  (loop for pkg in aoenian/packages
	when (not (package-installed-p pkg)) do (return nil)
	finally (return t)))

(unless (aoenian/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg aoenian/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

;; let emacs could find the execuable
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))


(global-hungry-delete-mode)

;;(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(smartparens-global-mode t)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; config js2-mode for js files
;; (setq auto-mode-alist
;;       (append
;;        '(("\\.js\\'" . js2-mode))
;;        auto-mode-alist))

(global-company-mode t)


(load-theme 'monokai t)

(require 'popwin)    ;;when require, wh(setq company-minimum-prefix-length 1)en not require
(popwin-mode t)

(provide 'init-packages)
