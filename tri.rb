
etat = true 
while(etat)
    etat = false 
    i= 0
    while(i < ARGV.length() - 1)
        if (ARGV[i] < ARGV[i + 1])
            box = ARGV[i]
            ARGV[i] = ARGV[i+ 1]
            ARGV[i + 1] = box
            puts 'SWAP'
            etat = true
        end
        i+= 1
    end
end

puts ARGV.join(' ')