class PigLatinizer
    # attr_reader :text
    # def initialize (text)
    #     @string=text
    # end

    def piglatinize(string)
        if string.split(" ").count ==1 
            #string=string.downcase
            array=string.scan(/[AEOUIaeoui]/)
            result=string.split('').find_index(array[0])
            
            if "AEOUIaeoui".include?(string[0])
                result=string+'way'
            else
                first_part=string.slice(0...result)
                second_part=string.slice(result..string.length)
                result=second_part+first_part+'ay'
            end
        elsif string.split(" ").count >1
            phrase_words=string.split(" ")
            piglation_array=phrase_words.map do |each|
                piglatinize(each)
            end
            result=piglation_array.join(" ")
        end
        result

    end
end
