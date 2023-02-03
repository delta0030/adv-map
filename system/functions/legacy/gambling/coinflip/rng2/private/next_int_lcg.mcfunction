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

function mechanics:gambling/coinflip/rng2/lcg

scoreboard players operation #temp math10 = out math10
scoreboard players operation out math10 %= #range math10
scoreboard players operation #temp math10 -= out math10
scoreboard players operation #temp math10 += #m1 math10
execute if score #temp math10 matches ..-1 run function mechanics:gambling/coinflip/rng2/private/next_int_lcg