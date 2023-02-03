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

function items:weapons/magic/tinder/rng/lcg

scoreboard players operation #temp math4 = out math4
scoreboard players operation out math4 %= #range math4
scoreboard players operation #temp math4 -= out math4
scoreboard players operation #temp math4 += #m1 math4
execute if score #temp math4 matches ..-1 run function items:weapons/magic/tinder/rng/private/next_int_lcg