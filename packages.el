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
    (setq company-coq-live-on-the-edge t
          company-coq-disabled-features '(smart-subscripts))
    (use-package company-coq
      :config
      (add-hook 'coq-mode-hook 'company-coq-mode)
      ;; More conservative symbol prettification.
      (add-hook 'coq-mode-hook
                (lambda ()
                  (setq-local company-coq-prettify-symbols-alist
                              '(("fun" . ?λ) ("forall" . ?∀) ("exists" . ?∃)
                                ("|-" . ?⊢) ("||" . ?‖) ("/\\" . ?∧) ("\\/" . ?∨)
                                ("->" . ?→) ("<-" . ?←) ("<->" . ?↔) ("=>" . ?⇒)
                                ("<=" . ?≤) (">=" . ?≥) ("<>" . ?≠) ("++" . ?⧺)
                                ("True" . ?⊤) ("False" . ?⊥))))))))

;;; packages.el ends here
