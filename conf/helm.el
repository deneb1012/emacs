;;
;; helm
;;
(el-get-bundle helm)
(require 'helm-config)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)
