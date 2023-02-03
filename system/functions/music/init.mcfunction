# "continents"
scoreboard objectives add mainland dummy
scoreboard objectives add desert dummy
scoreboard objectives add coldbluff dummy
scoreboard objectives add turware dummy

# towns
scoreboard objectives add singwoods dummy
scoreboard objectives add mookan dummy
scoreboard objectives add au dummy
scoreboard objectives add bers dummy
scoreboard objectives add bior dummy

# dungeons
scoreboard objectives add singwoodsdun dummy
scoreboard objectives add mookandun dummy
scoreboard objectives add coldbluffdun dummy
scoreboard objectives add anohdun dummy

# forest
scoreboard objectives add swforest dummy
scoreboard objectives add enforest dummy

# delay
scoreboard objectives add delaypick dummy
scoreboard objectives add delay dummy
scoreboard players set @a delay 100

# sfx
## wind
scoreboard objectives add wind dummy
scoreboard objectives add windevent dummy
scoreboard objectives add windeventtimer dummy
scoreboard players set @a wind 0
scoreboard players set @a windevent 0
scoreboard players set %wind windeventtimer 0

## forest sfx
scoreboard objectives add forestsfx dummy
scoreboard players set %birb1 forestsfx 0
scoreboard players set %birb2 forestsfx 0
scoreboard players set %birb3 forestsfx 0
scoreboard players set %birb4 forestsfx 0
scoreboard players set %birb5 forestsfx 0
scoreboard players set %sfxdelay forestsfx 0



# debugging
scoreboard objectives add songstop dummy

kill @e[type=marker,tag=locMark]

# summon marker area effect clouds
## mainland
summon marker 1000.5 56 -2000.5 {Tags:["locMark","mainlandMark"]}
summon marker 1000.5 56 -1000.5 {Tags:["locMark","mainlandMark"]}
summon marker 1000.5 56 0.5 {Tags:["locMark","mainlandMark"]}
summon marker 2000.5 56 0.5 {Tags:["locMark","mainlandMark"]}
summon marker 2000.5 56 -1000.5 {Tags:["locMark","mainlandMark"]}
summon marker 2000.5 56 -2000.5 {Tags:["locMark","mainlandMark"]}
summon marker 0.5 56 -1000.5 {Tags:["locMark","mainlandMark"]}
summon marker 0.5 56 0.5 {Tags:["locMark","mainlandMark"]}
summon marker 500.5 56 -1500.5 {Tags:["locMark","mainlandMark"]}
summon marker 500.5 56 -500.5 {Tags:["locMark","mainlandMark"]}
summon marker 750.5 56 250.5 {Tags:["locMark","mainlandMark"]}
summon marker 2000.5 56 2000.5 {Tags:["locMark","mainlandMark"]}

# singwoods
summon marker 1507.5 56 -765.5 {Tags:["locMark","swMark"]}

# forest
summon marker 1612.5 56 -1117.5 {Tags:["locMark","swforestMark"]}
summon marker 1362.5 56 -1117.5 {Tags:["locMark","swforestMark"]}
summon marker 1112.5 56 -1117.5 {Tags:["locMark","swforestMark"]}
summon marker 862.5 56 -1117.5 {Tags:["locMark","swforestMark"]}
summon marker 1117.5 56 -1250.5 {Tags:["locMark","swforestMark"]}
summon marker 1117.5 56 -1000.5 {Tags:["locMark","swforestMark"]}
summon marker 967.5 56 -1000.5 {Tags:["locMark","swforestMark"]}

## desert
#summon marker -174.50 56.00 104.50 {Tags:["locMark","desertMark"]}

function system:music/rng/init/init
function system:music/sfx/rng/init/init
function system:music/sfx/wind/rng/init/init