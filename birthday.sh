read bdy
bmon=${bdy:0:2}
bday=${bdy:3:2}
byear=${bdy:6:4}

cdate='date +%m-%d-%y'
cmon=${cdate:0:2}
cday=${cdate:3:2}
cyear=${cdate:6:4}

if [[ "$cmon" -lt "$bmon" ]] || [[ "$cmon" -eq "$bmon" && "$cday" -eq "$bday" ]]
then
	let age=cyear-byear-1
else
	let age=cyear-byear
fi
	echo "age= "$age
