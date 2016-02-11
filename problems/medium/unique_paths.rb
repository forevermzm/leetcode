# @param {Integer} m
# @param {Integer} n
# @return {Integer}
def unique_paths(m, n)
    if m > 0 and n > 0
        paths = Array.new( m, Array.new( n, 1 ) )
        (1...m).each { |i|
            (1...n).each { |j|
                paths[ i ][ j ] = paths[ i - 1 ][ j ] + paths[ i ][ j - 1 ]
            }
        }
        paths[ m - 1 ][ n - 1 ]
    end
end
