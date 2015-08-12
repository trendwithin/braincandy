require 'dictionary'
class Cheater

  def initialize
    @dictionary = Dictionary.new
    @jumble = []
    @words = []
  end

  def letter_combinations(letters)
    min = 1
    max = letters.size
    @jumble = letters.split ''
    @jumble = (min..max).flat_map{ |chars| @jumble.permutation(chars).map(&:join) }
  end

  def unjumble(letters)
    scrambled = letter_combinations(letters)
    scrambled.each do | e |
      @words << e if @dictionary.wordlist.include? "#{e}"
    end
    @words
  end

  def cheatsheet
    @words.each { |w| puts "#{w}"}
  end
end
