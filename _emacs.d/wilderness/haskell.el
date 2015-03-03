(defun prettify-haskell ()
  (push '("\\" . ?λ) prettify-symbols-alist)
  (push '(".." . ?…) prettify-symbols-alist)
  (push '("::" . ?∷) prettify-symbols-alist)
  (push '("<>" . ?◇) prettify-symbols-alist)
  (push '(" * "  . ?·) prettify-symbols-alist)
)
(add-hook 'haskell-mode-hook 'prettify-haskell)
