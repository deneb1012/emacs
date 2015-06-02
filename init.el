(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))

;;
;; el-get
;;
(add-to-list 'load-path (locate-user-emacs-file "el-get/el-get"))
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
        (eval-print-last-sexp)))

;;
;; load config files
;;
(setq load-path (append '("~/.emacs.d/conf") load-path))
(load "helm")
(load "auto-complete")
(load "magit")
(load "yaml")
(load "ruby")
(load "direx")
(load "theme")
