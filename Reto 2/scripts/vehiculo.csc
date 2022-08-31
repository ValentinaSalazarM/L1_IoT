atget id id
set x 0

loop
delay 1000
atnd n

read mens 
rdata mens tipo valor

if((tipo=="hola") && (x==0))
	
	set x 1
	data mens "parqueo" id
	send mens 4
	
else
	if ((n>0) && (x==0))

		data mens "hola" id
		send mens 4

	end
end

if(tipo=="parqueo")
	conc ruta "" "route" valor
	cprint ruta
	route ruta
	delay 20000
	route "route7"
end

if(tipo=="lleno")
	route "route7"
end

wait 100
