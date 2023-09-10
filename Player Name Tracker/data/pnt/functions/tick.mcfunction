execute as @a[scores={pnt.left=1..}] at @s run function pnt:test_name/start
execute as @a unless score @s pnt.left matches 0 at @s run function pnt:new_user/start