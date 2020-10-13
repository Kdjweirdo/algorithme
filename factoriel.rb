
number = ARGV[0]

def factoriel(x)
    if ( x <= 1)
        return (1)
    end
    return (x* factoriel(x-1))
end

number = ARGV[0].to_i

puts factoriel(number)