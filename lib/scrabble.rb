class Scrabble
  def initialize(word)
    @word = word
  end

  def score
    total_score = 0
    
    scores_hash = {}
    scores_hash["1"]  = ['a','e','i','o','u','l','n','r','s','t']
    scores_hash["2"]  = ['d','g']
    scores_hash['3']  = ['b','c','m','p']
    scores_hash['4']  = ['f','h','v','w','y']
    scores_hash['5']  = ['k']
    scores_hash['8']  = ['j','x']
    scores_hash['10'] = ['q','z']

    if @word == nil
      return 0
    end

    letters = @word.chars

    letters.each do |l|
      scores_hash.each do |score, tile_array|
        if tile_array.include? l.downcase
          total_score += score.to_i
        end
      end
    end

    total_score
  end
end
