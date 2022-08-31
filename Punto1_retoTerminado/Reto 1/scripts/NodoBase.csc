atget id id

data p "hola" id id
send p * 25

set c 0

loop

read mens
rdata mens tipo valor1 valor2
if(tipo == "alerta")
	set c c+1
	cprint "Alerta en: longitud" valor1 ", latitud: " valor2
end 
cprint c
if(c == 4)
	data d "incendio" id id
	send d 25
	set c 0	
end

wait 100