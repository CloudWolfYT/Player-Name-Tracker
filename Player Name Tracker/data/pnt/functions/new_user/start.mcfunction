scoreboard players set @s pnt.left 0
function pnt:get_name
data modify storage pnt args set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage pnt args.UUID set from entity @s UUID
data modify storage pnt args.name set from storage pnt temp

function pnt:new_user/append with storage pnt args