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

function mobs:executioner/rng/lcg

scoreboard players operation #temp math11 = out math11
scoreboard players operation out math11 %= #range math11
scoreboard players operation #temp math11 -= out math11
scoreboard players operation #temp math11 += #m1 math11
execute if score #temp math11 matches ..-1 run function mobs:executioner/rng/private/next_int_lcg