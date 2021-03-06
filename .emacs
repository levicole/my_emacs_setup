(add-to-list 'load-path
             "~/.emacs.d/plugins/erlang")
(require 'erlang)
(add-to-list 'load-path
             "~/.emacs.d/plugins/yasnippet")

(require 'yasnippet)
(add-hook 'c-mode-hook 'turn-on-font-lock)

(yas/initialize)
(yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

(add-to-list 'load-path "~/.emacs.d/plugins/rinari")
(require 'rinari)
(require 'ruby-mode)
(global-set-key (kbd "C-x C-M-f") 'find-file-in-project)
(add-hook 'rinari-minor-mode-hook '(lambda()
				     (yas/load-directory "~/.emacs.d/plugins/rails_snippets")))
(add-to-list 'auto-mode-alist '("\.rb$" . ruby-mode) '("\.erl$" . erlang-mode))
(add-to-list 'load-path
             "~/.emacs.d/plugins/")
(require 'ruby-electric)
(add-hook 'ruby-mode-hook '(lambda()(ruby-electric-mode)))