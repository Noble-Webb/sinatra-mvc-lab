require 'pry'
class PigLatinizer 

   def piglatinize(string)
        #split the string into words
        words = string.split(" ")
        #call translate method to translate each word + extends word's to translate method 
        word = words.map {|word| translate(word)}
        #rejoin the the augmented words to the og string
        word.join(" ")
   end

   #helper translator method
   def translate(word)

        #get first character of a word
        char = word.chr
        #check if it starts with a vowel downcases to match
        if ['a','e','i','o','u'].include?(char.downcase)
            #if it does add way to the end
           word + "way"
        else
            #storage of consonants
            cons = []
            #we know the first word is a con so store it 
            cons << char  
            #check if the second character is Not a vowel
            if ['a','e','i','o','u'].none?(word[1])
                #if it isn't store the con
                cons << word[1]
                #check if the third character is Not a vowel
                if ['a','e','i','o','u'].none?(word[2])
                    #if it isn't store the con
                    cons << word[2]
                end 
            end 
            #augment the word's length by the range of cons appen the cons & ay in that order
             "#{word[cons.length..-1]}" + cons.join + "ay"
            #binding.pry
        end
   end
    
end

 # def piglatinize(string)
    #     words = string.split(" ")
    #     vowels = ['a','e','i','o','u']
    #     char =  words[0].chars.first
        
    #      if char == 'a' or 'e' or 'i' or 'o' or 'u'
    #      if char == "a" || char == "e" || char == "i" || char == "o" || char == "u"
    #        string = string[0] << "way"
    #        binding.pry     
           # word = words[0].to_s << "way"
        # else
        #     second = words[0][1]
        #     if first != 'a' or 'e' or 'i' or 'o' or 'u'
        #         "#{words}" << first
        #     end
        #     if second != 'a' or 'e' or 'i' or 'o' or 'u'
        #         words << second
        #     end
        #     words << "ay"
        # end