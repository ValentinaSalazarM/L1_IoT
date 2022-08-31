set n 1
loop
wait 1000
atnd s
if s != 1
if s > n
set temp s-n
data mens "entrada" temp
send mens
set n s
end
if s < n
set temp n-s
data mens "salida" temp
send mens
set n s
end
end
