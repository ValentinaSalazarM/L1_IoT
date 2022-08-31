atget id id
set cupos id


loop
wait 100
read mens
rdata mens tipo Bid 
if(tipo=="cupos")
	data mens "cupos" id cupos
	send mens Bid
end

if( tipo=="parqueo")
	set cupos cupos-1
	cprint "CUPOSLLEGADA" cupos
	data mens "parqueo" id
	send mens Bid
end

if( tipo=="salida")
	set cupos cupos+Bid
	cprint "CUPOSSALIDA" cupos
	data mens "salidaP" id cupos
	send mens 4
end

if( tipo=="entrada")
	cprint "HOLA" cupos
	set cupos cupos-Bid
	data mens "entradaP" id cupos
	send mens 4
end
