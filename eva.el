;;; eva.el --- Emacs virtual assistant -*- lexical-binding: t; -*-

;; Author: Finn Luca Frotscher <finn@finnfrotscher.com>
;; Version: 0.0.1
;; Package-Requires: ((emacs "24.5"))
;; Keywords: convenience
;; URL: https://github.com/LazerJesus/EVA

;; This file is not part of GNU Emacs.

;; Commentary:
;; Brief introduction to what your package does and/or why it exists.

;; Code:
;;; eva-package.el --- Evaluate user input from an external API -*- lexical-binding: t; -*-

;; Author: Your Name <your.email@example.com>
;; Version: 0.0.1
;; Package-Requires: ((emacs "25.1") (request "0.3.0") (json "1.4"))
;; Keywords: lisp eval api
;; URL: https://github.com/your-github-username/eva-package

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Use an API to evaluate user input as Emacs Lisp code.

;;; Code:

(require 'request)
(require 'json)

(defvar eva-api-url "https://default-api-url.com/endpoint"
  "API URL used by the eva function.  Set this to the desired endpoint.")

(defun eva (prompt)
  "Fetch evaluation for PROMPT from the API and evaluate it in Emacs."
  (interactive "sEnter your prompt: ")
  (message "prompt: %s" prompt)

  ;; Call the API
  (request
   eva-api-url
   :type "POST"
   :headers '(("Content-Type" . "application/json"))
   :data (json-encode `(("prompt" . ,prompt)))
   :parser 'json-read
   :success (cl-function
             (lambda (&key data &allow-other-keys)
               ;; Extract the completion value and evaluate it
               (when data
                 (let ((completion (alist-get 'completion data)))
                   (when completion
                     (eval (read completion)))))))
   :error (cl-function
           (lambda (&rest args &key error-thrown &allow-other-keys)
             (message "Got error: %S" error-thrown)))))

(provide 'eva-package)

;;; eva-package.el ends here


