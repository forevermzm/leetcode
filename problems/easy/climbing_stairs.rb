# @param {Integer} n
# @return {Integer}
#
# For each stair n, it only depends on stair n - 1 and n - 2,
# because it takes either 1 step from n - 1 or 2 steps from
# n - 2 to get to n stair.
def climb_stairs(n)
    if n < 3
        return n
    else
        m1 = 1
        m2 = 2
        ways = 0
        (3..n).each { |stair|
            ways = m1 + m2
            m1 = m2
            m2 = ways
        }
        return ways
    end
end

