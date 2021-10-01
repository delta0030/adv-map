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

function mechanics:gambling/coinflip/rng/lcg

scoreboard players operation #temp math9 = out math9
scoreboard players operation out math9 %= #range math9
scoreboard players operation #temp math9 -= out math9
scoreboard players operation #temp math9 += #m1 math9
execute if score #temp math9 matches ..-1 run function mechanics:gambling/coinflip/rng/private/next_int_lcg