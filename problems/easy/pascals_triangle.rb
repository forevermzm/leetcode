# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    if num_rows == 0
        return []
    elsif num_rows == 1
        return [ [ 1 ] ]
    else
        base = generate num_rows - 1
        last_row = base[ -1 ]
        this_row = [ 1 ] * num_rows
        (1..num_rows - 2).each { |i|
            this_row[ i ] = last_row[ i - 1 ] + last_row[ i ]
        }
        return base.push this_row
    end
end
