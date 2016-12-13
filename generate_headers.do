* to save using today's date
clear
local c_date = c(current_date)
local clean_date = subinstr("`c_date'", " ", "_", .)
import delimited /Users/Elodie/Downloads/Stata/NewMORDORVerbalAutop_DATA_2016-12-12_2126.csv
* To save using today's date
* save "/Users/Elodie/Downloads/Stata/VA_REDCAP-`clean_date'.dta", replace
order q202a, first
rename q202a prenom_pers_int
rename q202b nom_pers_int
*list all names that need to be changed
gen observation=""
export delimited "/Users/Elodie/Downloads/Stata/VA_REDCAP`clean_date'.csv", replace
