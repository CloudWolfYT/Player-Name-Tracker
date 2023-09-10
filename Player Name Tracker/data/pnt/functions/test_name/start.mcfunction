scoreboard players set @s pnt.left 0
function pnt:get_name
data modify storage pnt args set value {UUID:[I;0,0,0,0],name:"null"}
data modify storage pnt args.UUID set from entity @s UUID
data modify storage pnt args.name set from storage pnt temp

function pnt:test_name/get with storage pnt args

data modify storage pnt args.old_name set from storage pnt args.name
execute store result score .match pnt.left run data modify storage pnt args.old_name set from storage pnt temp.name
execute if score .match pnt.left matches 1 run function pnt:new_name/start