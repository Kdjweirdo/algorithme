c1 = ARGV[0]
c2 = ARGV[1]

carre=[]
position = 0
File.foreach(c1) { |line| carre[position] = line.chomp.split('').map(&:to_i); position+= 1  }

data = []
position = 0
File.foreach(c2) { |line| data[position] = line.chomp.split('').map(&:to_i); position += 1 }

puts carre.inspect
puts data.inspect

def check(data,carre,line,column)
  line2 = 0
  while(line2 < carre.count)
    column2 = 0
    while(column2 < carre[line2].count)
      if(carre[line2][column2] == data[line + line2][column + column2])
        puts "MATCH"
        return true 
      end
      column2 += 1
    end
    line2 += 1
  end
end





def seek_in_rectangle (data,carre)
  line = 0
  while(line < data.count)
    column = 0
    while(column < data[line].count)
      if (data[line][column] == carre[0][0])
         if (check(data,carre,line,column))
          puts "#{line},#{column}"
          return true
         end
      end
      column += 1
    end
    line += 1
  end
end

seek_in_rectangle(data,carre)