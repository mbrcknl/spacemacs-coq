;;; coq/packages.el --- coq layer packages file for Spacemacs.
;;
;; Copyright (c) 2016 Matthew Brecknell
;;
;;; License: GPLv3

(defconst coq-packages '(company-coq))

(defun coq/init-company-coq ()
  (use-package proof-site
    :mode ("\\.v\\'" . coq-mode)
    :load-path "~/.emacs.d/private/local/ProofGeneral/generic"
    :config
    (use-package company-coq
      :config
      (add-hook 'coq-mode-hook 'company-coq-mode))))

;;; packages.el ends here
