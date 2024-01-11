###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/lcg

scoreboard players operation #temp math5 = out math5
scoreboard players operation out math5 %= #range math5
scoreboard players operation #temp math5 -= out math5
scoreboard players operation #temp math5 += #m1 math5
execute if score #temp math5 matches ..-1 run function entities:mobs/types/dungeon/mookan/runic_wizard/attacks/rng/private/next_int_lcg