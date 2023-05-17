def caesar_cipher(string, shift_factor)

    #With this line of code we are splitting our string into an array of 
    #individual characters and then mapping the ord. method to each individual 
    #character in order to return an array of each characters cooresponding numeric value
    char_array = string.split('')
    num_array = char_array.map {|char| char.ord}

    #a = 97 z = 122
    shifted_array = []

    for value in num_array do

        if value >= 97 && value <= 122

            shifted_value = (value+shift_factor)
            shifted_array << (wrap(shifted_value)).chr
            
        #if the value is not a number between 97 & 122 it means it is not a character between #a & z and therefore does not need to be changed
        else

            shifted_array << value.chr
        
        end

    end
    
    puts shifted_array.map {|num| num.chr}.join

end



def wrap(val)

    new_value = val

    #If the val is greater than 122 me must subtract 26 (representing 26 characters) in order to find the appropriate numeric value corresponding to a character in the alphabet
    while new_value > 122 do

        new_value = new_value-26
    
    end

    return new_value
    
end

caesar_cipher("helloz  youx",12)



