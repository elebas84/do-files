* to save using today's date
clear
local c_date = c(current_date)
local clean_date = subinstr("`c_date'", " ", "_", .)
import delimited M:\MORDOR\NewMORDORVerbalAutop_DATA_2016-12-20_1337-Checked.csv
* To save using today's date
* save "/Users/Elodie/Downloads/Stata/VA_REDCAP-`clean_date'.dta", replace
order status record_id district csi grappe q202a q202b q203 q203_other q204 q301a q301b q302 q310a q310b q311a q311b q304a q304b q304c q305a q305b q306a q306b q306c
rename q202a prenom_pers_int
rename q202b nom_pers_int
rename q203 relation
rename q203_other relation_other
rename q204 lived_together
rename q301a prenom_dcd
rename q301b nom_dcd
rename q302 sexe
rename q310a prenom_mere
rename q310b nom_mere
rename q311a prenom_pere
rename q311b nom_pere
rename q304a DD_DOB
rename q304b MM_DOB
rename q304c YY_DOB
rename q305a MM_age_death
rename q305b YY_age_death
rename q306a DD_DOD
rename q306b MM_DOD
rename q306c YY_DOD
*list all names that need to be changed
*gen observation=""
export delimited "M:\MORDOR\VA_REDCAP`clean_date'.csv", replace
