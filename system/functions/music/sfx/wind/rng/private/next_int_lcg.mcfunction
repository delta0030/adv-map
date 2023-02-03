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

function system:music/sfx/wind/rng/lcg

scoreboard players operation #temp math8 = out math8
scoreboard players operation out math8 %= #range math8
scoreboard players operation #temp math8 -= out math8
scoreboard players operation #temp math8 += #m1 math8
execute if score #temp math8 matches ..-1 run function system:music/sfx/wind/rng/private/next_int_lcg