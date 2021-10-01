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

function entities:bosses/globulous/rng/lcg

scoreboard players operation #temp math1 = out math1
scoreboard players operation out math1 %= #range math1
scoreboard players operation #temp math1 -= out math1
scoreboard players operation #temp math1 += #m1 math1
execute if score #temp math1 matches ..-1 run function entities:bosses/globulous/rng/private/next_int_lcg