;; themacsia is a dark emacs theme inspired by theia
;; Copyright (C) 2022  anıl

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

(deftheme themacsia
  "a dark emacs theme inspired by theia")

(custom-theme-set-variables
 'themacsia
 '(scroll-bar-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(cursor-type 'bar)
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))

(let ((highlight-background          "#264f78")
      (region-background             "#264f78")
      (string-foreground             "#ce9178")
      (link-foreground               "#3794ff")
      (mode-line-background          "#007acc")
      (mode-line-inactive-background "#37373d")
      (default-background            "#1e1e1e")
      (default-foreground            "#d4d4d4"))

  (custom-theme-set-faces
   'themacsia
   `(highlight ((t (:background, highlight-background))))
   `(region ((t (:background, region-background))))
   `(font-lock-string-face ((t (:foreground, string-foreground))))
   '(button ((t (:inherit link :box nil))))
   `(link ((t (:foreground, link-foreground))))
   `(mode-line ((t (:background, mode-line-background :box nil))))
   '(mode-line-highlight ((t (:box nil))))
   `(mode-line-inactive ((t (:inherit mode-line :background, mode-line-inactive-background))))
   `(default ((t (:background, default-background :foreground, default-foreground))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'themacsia)

;; -*-no-byte-compile: t; -*-
