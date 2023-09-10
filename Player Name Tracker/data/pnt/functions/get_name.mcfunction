data modify entity 00000070-0000-006e-0000-007400000078 text set value '{"selector":"@p"}'

# calcualte length of the name
execute store result score .str_len pnt.left run data get entity 00000070-0000-006e-0000-007400000078 text
scoreboard players remove .str_len pnt.left 226
scoreboard players operation .str_len pnt.left /= #4 pnt.left
execute store result storage pnt args.len int 1 run scoreboard players add .str_len pnt.left 2

execute as 00000070-0000-006e-0000-007400000078 run function pnt:get_name_str with storage pnt args