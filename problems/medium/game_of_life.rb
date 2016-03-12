# @param {Integer[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def game_of_life(board)
    if board and ! board.empty? and ! board[ 0 ].empty?
        m = board.size
        n = board[ 0 ].size
        (0...m).each { |i|
            (0...n).each { |j|
                new_state = state i, j, m, n, board
                board[ i ][ j ] = new_state
            }
        }
        (0...m).each { |i|
            (0...n).each { |j|
                board[ i ][ j ] = board[ i ][ j ] % 2
            }
        }
    end
end

# state 0 == dead -> dead
# state 1 == live -> live
# state 2 == live -> dead
# state 3 == dead -> live
def state x, y, m, n, board
    old_state = board[ x ][ y ]
    live_count = 0
    (x-1..x+1).each { |i|
        (y-1..y+1).each { |j|
            if i == x and j == y
                next
            end
            if 0 <= i and i < m and 0 <= j and j < n
                if wasLive board[ i ][ j ]
                    live_count = live_count + 1
                end
            end
        }
    }
    if wasLive old_state
        if live_count == 2 or live_count == 3
            new_state = 1
        else
            new_state = 2
        end
    else
        if live_count == 3
            new_state = 3
        else
            new_state = 0
        end
    end
    new_state
end

def wasLive state
    state == 1 or state == 2
end
