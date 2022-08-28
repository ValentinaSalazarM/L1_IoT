atget id id
set x 0

loop
delay 5000

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
	rmove 1000
	delay 40000
	data mens "salida" id
	int parqueadero valor
	send mens parqueadero
	route "route0"
	rmove 1000
end

wait 100
