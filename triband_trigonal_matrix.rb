triband = [
        [1,2,0,0,0],
        [1,2,3,0,0],
        [0,1,2,3,0],
        [0,0,1,2,3],
        [0,0,0,1,2]
    ]
    
    sd_array = [1,1,1,1, 1,2,2,2,2, 2,3,3,3]
    
    n = 4
    for i in 0..n
        for j in 0..n
            if(i-j == 0)
                index = n-1 + i
            elsif (i - j == 1)
                index = i - 1
            elsif(i-j == -1)
                index = 2*n-1+i
            else
                # puts "triband[#{i}][#{j}]: #{triband[i][j]}"
            end
            
            puts "triband[#{i}][#{j}]: #{triband[i][j]}, sd_array[#{index}]: #{sd_array[index]}"
        end
    end
    