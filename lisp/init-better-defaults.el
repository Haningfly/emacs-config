;; 增强内置功能

;; Find Executable Path on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; 自动加载外部修改后的文件
(global-auto-revert-mode 1)

;; 关闭警告提示音
(setq ring-bell-function 'ignore)

;; 关闭自动保存
(setq auto-save-default nil)

;; 开启evil模式
(evil-mode 1)

;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 这一行代码，将函数 open-init-file 绑定到 <f2> 键上
(global-set-key (kbd "<f2>") 'open-init-file)

; 开启全局 Company 补全
(global-company-mode 1)
(setq make-backup-files nil)
(setq auto-mode-alist
      (append
       '(
	 ("\\.js\\'" . js2-mode)
	 ("\\.python\\'" . python-mode)
	 ("\\.go\\'" . go-mode)
       )
       auto-mode-alist))

(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(require 'org)
(setq org-src-fontify-natively t)

(setq custom-file "~/.emacs.d/lisp/custom-config.el")

(provide 'init-better-defaults)
