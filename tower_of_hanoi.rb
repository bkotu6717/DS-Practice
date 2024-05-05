def tower(n, from_rod, to_rod, aux_rod)
    puts "\nentered with tower(#{n}, #{from_rod}, #{to_rod}, #{aux_rod})"
    if(n>0)
      puts "from_rod -> aux_rod: tower(#{n-1}, #{from_rod}, #{aux_rod}, #{to_rod})"
      tower(n-1, from_rod, aux_rod, to_rod)
      puts "Move disk from #{from_rod} to #{to_rod}"
      
      puts "aux_rod -> to_rod tower(#{n-1}, #{aux_rod}, #{to_rod}, #{from_rod})"
      tower(n-1, aux_rod, to_rod, from_rod)
    end
end

tower(2, 'A', 'B', 'C')
