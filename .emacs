(load-file "/home/dragon/Downloads/emacs_tool/cedet-1.0.1/common/cedet.el")
(semantic-load-enable-excessive-code-helpers)
(global-ede-mode t)
(require 'semantic-ia)
(require 'semantic-gcc)
(global-srecode-minor-mode 1)

(add-to-list 'load-path "/home/dragon/Downloads/emacs_tool/ecb-2.40")
(require 'ecb)
;;(ecb-activate)
(setq ecb-auto-activate t ecb-tip-of-the-day nil)
(defvar cur-path (getenv "PWD"))
(defvar cur-dir-name (car (last (split-string cur-path "/"))))
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(ecb-primary-secondary-mouse-buttons (quote mouse-1--mouse-2))
 '(ecb-source-path (list (list cur-path cur-dir-name))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(load-file "/home/dragon/.emacs.d/xcscope.el")
(require 'xcscope)

(load-file "/home/dragon/.emacs.d/php-mode.el")
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

(add-to-list 'load-path "/home/dragon/.emacs.d/theme")
(load-file "/home/dragon/.emacs.d/theme/color-theme.el")
;;(load-file "/home/dragon/.emacs.d/color-theme-ahei.el")
(require 'color-theme)
(color-theme-initialize)
(color-theme-classic)

(load-file "/home/dragon/.emacs.d/linum+.el")
(global-linum-mode t)

(load-file "/home/dragon/.emacs.d/dragon-common.el")
(load-file "/home/dragon/.emacs.d/dragon.el")
