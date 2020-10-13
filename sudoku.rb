fichier = ARGV[0]

grid = []
position = 0
File.foreach(fichier) { |line| grid[position] = line.chomp.split(''); position += 1}



def print_grid(grid)
    line = 0
    while(line < grid.count)
        column = 0
        while(column < grid[line].count)
            print grid[line][column]
            column += 1
        end
        print "\n"
        line += 1
    end
end



def init_array()
    new_array = []
    val = 0
    while(val < 10)
        new_array[val] = 0
        val += 1
    end
    return (new_array)
end


def check_line(grid,line)
    array = init_array()
    column = 0 
    while(column < grid[line].count)
      val = grid[line][column].to_i
        if (val > 0 && val < 10)
            array[val] += 1
            if (array[val] > 1)
                return (false)
            end
        end
        column += 1
    end
    return (true)
end

def check_column(grid,column)
    array = init_array()
    line = 0
    while( line < grid.count)
        val = grid[line][column].to_i
        if(val > 0 && val < 10)
            array[val] += 1
            if(array[val] > 1)
                return (false)
            end
        end
      line += 1
    end
    return(true)
end


def check_block(grid,line,column)
    array = init_array()
    begin_line = (line /4) * 4
    begin_column = (column /4) * 4
    line = 0
    while( line < begin_line + 3)
        while(column < begin_column + 3)
            val = grid[line][column].to_i
            if(val > 0 && val < 10)
                array[val] += 1
                if(array[val] > 1)
                    return (false)
                end
            end
            column += 1
        end
        line += 1
    end
    return (true)    
end

def sudoku_solver(grid)
    line = 0
    while(line < grid.count)
        column = 0
        while(column < grid[line].count)
            if(grid[line][column] == "_")
                new_value = 1
                while(new_value < 10)
                    grid[line][column] = new_value
                    if(check_line(grid,line) && check_column(grid,column) && check_block(grid,line,column))
                        grid = sudoku_solver(grid.map(&:clone))
                        if(grid != false)
                            return (grid)
                        end
                    end
                    new_value += 1
                end
                return(false)
            end
         column += 1
        end
        line += 1
    end
    return(grid)
end

def check_grid(grid)
    grid = sudoku_solver(grid)
    if(grid == false)
     puts "Error."
    else
        print_grid(grid)
    end
end

check_grid(grid)