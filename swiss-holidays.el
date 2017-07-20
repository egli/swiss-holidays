;;; swiss-holidays.el --- Swiss holidays for the calendar

;; Author: Christian Egli <christian.egli@alumni.ethz.ch>
;; URL: https://github.com/egli/swiss-holidays
;; Version: 0.1

;; This file is not part of GNU Emacs

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; For a full copy of the GNU General Public License
;; see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; The list of official Swiss holidays. With regional holidays included.
;;
;; Installation:
;;
;; To use `swiss-holidays' in your calendar
;;
;;  (setq holiday-other-holidays swiss-holidays)
;;
;; If you'd like to add regional holidays, use the following:
;;
;;  (setq holiday-other-holidays
;;        (append swiss-holidays swiss-holidays-catholic))
;;
;; The code was inspired by russian-holidays.el and
;; https://www.emacswiki.org/emacs/CalendarLocalization#toc34

;;; Code:
(eval-when-compile
  (require 'calendar)
  (require 'holidays))

; Holidays data based on
; https://de.wikipedia.org/wiki/Feiertage_in_der_Schweiz
(defvar swiss-holidays
  '((holiday-fixed 1 1 "Neujahr")
    (holiday-fixed 1 2 "Berchtoldstag")
    (holiday-easter-etc -2 "Karfreitag")
    (holiday-easter-etc 1 "Ostermontag")
    (holiday-fixed 5 1   "Tag der Arbeit")
    (holiday-easter-etc 39 "Auffahrt")
    (holiday-easter-etc 50 "Pfingstmontag")
    (holiday-fixed 8 1  "Bundesfeier")
    (holiday-fixed 12 25 "Weihnachtstag")
    (holiday-fixed 12 26 "Stephanstag"))
  "Official holidays in Switzerland.")

; Additional catholic holidays
(defvar swiss-holidays-catholic
  '((holiday-easter-etc 60 "Fronleichnam")
    (holiday-fixed 8 15 "Mariä Himmelfahrt")
    (holiday-fixed 11 1 "Allerheiligen")
    (holiday-fixed 12 8 "Mariä Empfängnis"))
  "Catholic holidays in Switzerland.")

; Regional holidays for the City of Zürich
(defvar swiss-holidays-zh-city-holidays
  '((holiday-float 4 1 3 "Sechseläuten") ;; meistens dritter Montag im April
    (holiday-float 9 1 3 "Knabenschiessen")) ;; zweites Wochenende im September
					     ;; (+ halber Montag danach)
  "Holidays for the City of Zürich.")

(provide 'swiss-holidays)

;;; swiss-holidays.el ends here
