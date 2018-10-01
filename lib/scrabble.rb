class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    total_score = 0

    scores_hash = {
      1 => ['a','e','i','o','u','l','n','r','s','t'],
      2 => ['d','g'],
      3 => ['b','c','m','p'],
      4 => ['f','h','v','w','y'],
      5 => ['k'],
      8 => ['j','x'],
      10 => ['q','z'],
    }

    if @word == nil
      return 0
    end

    @word.chars.each do |l|
      scores_hash.each do |score, tile_array|
        if tile_array.include? l.downcase
          total_score += score
        end
      end
    end

    total_score
  end
end
