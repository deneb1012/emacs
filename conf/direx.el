;;
;; popwin
;;
(el-get-bundle popwin)
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)

;;
;; direx
;;
(el-get-bundle direx)
(require 'direx)
(push '(direx:direx-mode :position left :width 50 :dedicated t) popwin:special-display-config)
(global-set-key (kbd "C-x C-j") 'direx:jump-to-directory-other-window)
