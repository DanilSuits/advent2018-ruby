class Blue
  def self.matches(box_ids)
    space = box_ids.combination(2).to_a

    space.each do |winner|
      left = winner[0]
      right = winner[1]

      next unless left.length == right.length
      
      result = []
      left.each_char.with_index do |char, index|
        if right[index] == char
          result << char
        end
      end

      if (left.length == (1 + result.length)) then
        yield result.join
      end
    end
  end

  def self.box_id(box_ids)
    matches(box_ids) do |match|
      return match
    end
  end
end