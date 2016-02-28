# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    if row_index == 0
        return [ 1 ]
    else
        last_row = get_row row_index - 1
        this_row = [ 1 ] * ( row_index + 1 )
        (0..row_index - 2).each { |i|
            this_row[ i + 1 ] = last_row[ i ] + last_row[ i + 1 ]
        }
        return this_row
    end
end
