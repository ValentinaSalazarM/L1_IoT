vec cupos 3
atget id id

data mens "cupos" id
send mens

loop
read resp
rdata resp tipo Pid valor

if(tipo=="hola")
	data mens "hola" id
	send mens Pid 
end

if(tipo=="cupos")

dec Pid
vset valor cupos Pid 

end

if(tipo=="salidaP")
cprint tipo
dec Pid
vset valor cupos Pid 

end

if(tipo=="entradaP")
cprint tipo
dec Pid
vset valor cupos Pid 

end

if(tipo =="parqueo")
cprint mens
set max 0
set parqueadero 0
set ruta "route"
set i 0
	while(i<3)
		
		vget act cupos i
|		cprint i act
		if (act>max)
			set max act
			set parqueadero i
		end
		set i i+1
		
	end
if(max == 0)
data mens "lleno" id
send mens Pid 
cprint "NO HAY PARQUEADEROS DISPONIBLES"
else
dec max
int temp max
vset temp cupos parqueadero
inc parqueadero
int w parqueadero
data mens "parqueo" Pid
cprint mens
send mens w
end 
end

wait 100



