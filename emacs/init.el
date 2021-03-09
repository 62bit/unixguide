(menu-bar-mode -1)
(tool-bar-mode -1)
(ido-mode 1)
(setq ring-bell-function 'ignore)
(toggle-scroll-bar -1)
(setq default-frame-alist '((font . "Monospace")))
(global-hl-line-mode +1)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(global-hi-lock-mode 1)
(setq visible-bell 1)
(show-paren-mode 1)

(global-display-line-numbers-mode)

(setq-default cursor-type 'box) 

(setq backup-directory-alist '(("" . "/home/username/backup")))

(cua-mode t)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq auto-save-default nil)
(setq make-backup-files nil)
(setq ac-auto-show-menu nil)

(setq-default tab-width 4)
(setq c-basic-offset 4)


(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands)
  ;; This is your old M-x.
  (global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(defun my-compile()
	(interactive)
  (compile "cd /home/eax/Desktop/sdl_game/lbuild/ && ./build.sh"))

(require 'multiple-cursors)


(defun quick-copy-line ()
  "Copy the whole line that point is on and move to the beginning of the next line.
    Consecutive calls to this command append each line to the
    kill-ring."
  (interactive)
  (let ((beg (line-beginning-position 1))
		(end (line-beginning-position 2)))
	(if (eq last-command 'quick-copy-line)
		(kill-append (buffer-substring beg end) (< end beg))
	  (kill-new (buffer-substring beg end))))
  (beginning-of-line 2))

(defun duplicate-current-line (&optional n)
  "duplicate current line, make more than 1 copy given a numeric argument"
  (interactive "p")
  (save-excursion
	(let ((nb (or n 1))
    	  (current-line (thing-at-point 'line)))
	  ;; when on last line, insert a newline first
	  (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
    	(insert "\n"))
	  
	  ;; now insert as many time as requested
	  (while (> n 0)
    	(insert current-line)
    	(decf n)))))

(global-set-key (kbd "C-+") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "S-<delete>") 'kill-whole-line)
(global-set-key (kbd "C-z") #'undo-only)
(global-set-key (kbd "C-v") 'yank)
(global-set-key (kbd "M-t") 'todo)
(global-set-key (kbd "M-y") 'note)
(global-set-key (kbd "C-g") 'goto-line)
(global-set-key (kbd "M-<down>") (lambda () (interactive) (scroll-up 10)))
(global-set-key (kbd "M-<up>") (lambda () (interactive) (scroll-down 10)))
(global-set-key (kbd "M-p") 'other-window)
(global-set-key (kbd "M-b") 'buffer-menu)
(global-set-key (kbd "M-o") 'ff-find-other-file)
(global-set-key (kbd "M-f") 'ido-find-file)
(global-set-key (kbd "M-k") 'kill-buffer)
(global-set-key [mouse-2] nil)
(global-set-key (kbd "C-c m c") 'mc/edit-lines)
(global-set-key (kbd "M-m") 'my-compile)
(global-set-key (kbd "M-c") 'comment-region)
(global-set-key (kbd "C-M-<down>") 'mc/mark-next-like-this)
(global-set-key (kbd "C-M-<up>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-S-c") 'quick-copy-line)
(global-set-key (kbd "C-S-d") 'duplicate-current-line)

(use-package dired-x
  :ensure nil)
(global-set-key (kbd "M-d") 'dired-jump)


(require 'cc-mode)
;; format before save
;;(add-hook 'before-save-hook 'clang-format-buffer)
(defun format-and-save()
  (interactive)
  (clang-format-buffer)
  (save-buffer))

(define-key
  c-mode-base-map
  (kbd "C-x C-s")
  'format-and-save)


(global-auto-complete-mode t)
(autopair-global-mode t)
 
 (set-cursor-color "#00ff00") 
