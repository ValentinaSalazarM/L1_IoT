atget id id
set cupos id


loop
wait 100
read mens
rdata mens tipo Bid 
if( tipo=="cupos")
data mens "cupos" id cupos
send mens Bid
end

