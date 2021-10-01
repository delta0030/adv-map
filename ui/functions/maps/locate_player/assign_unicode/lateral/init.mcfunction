execute if score %pz pos matches 0..91 run function ui:maps/locate_player/assign_unicode/lateral/groups/0_9
execute if score %pz pos matches 92..182 run function ui:maps/locate_player/assign_unicode/lateral/groups/9_18
execute if score %pz pos matches 183..272 run function ui:maps/locate_player/assign_unicode/lateral/groups/18_27
execute if score %pz pos matches 273..362 run function ui:maps/locate_player/assign_unicode/lateral/groups/27_36
execute if score %pz pos matches 363..454 run function ui:maps/locate_player/assign_unicode/lateral/groups/36_45
execute if score %pz pos matches 455..545 run function ui:maps/locate_player/assign_unicode/lateral/groups/45_54
execute if score %pz pos matches 546..636 run function ui:maps/locate_player/assign_unicode/lateral/groups/54_63
execute if score %pz pos matches 637..727 run function ui:maps/locate_player/assign_unicode/lateral/groups/63_72
execute if score %pz pos matches 728..818 run function ui:maps/locate_player/assign_unicode/lateral/groups/72_81
execute if score %pz pos matches 819..909 run function ui:maps/locate_player/assign_unicode/lateral/groups/81_91
execute if score %pz pos matches 910..1000 run function ui:maps/locate_player/assign_unicode/lateral/groups/91_100

data modify block ~ 0 ~ Text1 set value '[{"nbt":"player","storage":"map","interpret":true},{"nbt":"Text1","block":"~ 0 ~","interpret":true},{"nbt":"player","storage":"map","interpret":true}]'