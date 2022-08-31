atget id id
loop

wait 100
read mens

if(mens!="")
	rdata mens tipo valor

	mark 1

	data mens tipo id
	send mens * valor
end

wait 300
mark 0

