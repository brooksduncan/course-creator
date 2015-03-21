(* Generate syllabus table in HTML
by Derick Fay, June 2013

this version generates tables: 

Week 1 
Day 1
Day 2 *)

set noWeeks to 10 -- 10 week course
set theDays to "tr" -- Tuesday and Thursday
-- options are m, t, w, r, f, s, u
set theStart to date "Monday, March 30, 2015 at 12:00:00 AM" -- Monday of the week courses start
-- leave everything below here alone

set theString to "<table>"
set theColumns to "<td></td><td></td>" --the blank column for the Week

repeat with n from 1 to noWeeks
	set theString to theString & "<tr><td>Week " & (n as string) & "</td><td></td></tr>"
	if theDays contains "m" then
		set theDate to theStart + ((n - 1) * 7 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "t" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + 86400
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "w" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + (2 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "r" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + (3 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "f" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + (4 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "s" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + (5 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
	if theDays contains "u" then
		set theDate to theStart + ((n - 1) * 7 * 86400) + (6 * 86400)
		set theString to (theString & "<tr><td>" & (((weekday of theDate as string)) & " " & month of theDate as string) & " " & day of theDate as string) & "</td><td></td></tr>"
	end if
end repeat
set theString to theString & "</table>"
set the clipboard to theString