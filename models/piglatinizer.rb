class PigLatinizer
    attr_reader :string

    def initialize
        
    end

    def piglatinize(string)
        @string = string
        consonants = 'bcdfghjklmnpqrstvwxyz'.split('')
        vowels = 'aeiou'.split('')
        string_array = self.string.split(' ')

        pl_array = string_array.map do |string|
            if string.split('').first == string.split('').first.capitalize
                new_string = string + "way"
                new_string
            elsif consonants.include?(string.split('').first) 
                if consonants.include?(string.split('')[1])
                    if consonants.include?(string.split('')[2])
                        new_string = ''
                        first_three_letters = string.slice!(0,3)
                        new_string = new_string + string + first_three_letters + "ay"
                        new_string
                    else
                        new_string = ''
                        first_two_letters = string.slice!(0,2)
                        new_string = new_string + string + first_two_letters + 'ay'
                        new_string
                    end
                else 
                    new_string = ''
                    first_letter = string.slice!(0,1)
                    new_string = string + first_letter + 'ay'
                    new_string
                end
            elsif vowels.include?(string.split('').first) && vowels.include?(string.split('').last)
                new_string = string + "way"
                new_string
            elsif vowels.include?(string.split('').first) && consonants.include?(string.split('')[1])
                new_string = string + "way"
                new_string
            elsif vowels.include?(string.split('').first)
                new_string = ''
                first_letter = string.slice!(0,1)
                new_string = new_string + string + first_letter + "way"
                new_string
            end
        end

        pl_array.join(' ')




    end

end