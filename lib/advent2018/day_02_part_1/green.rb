module Green
  def self.signature(box_id)
    # https://mensfeld.pl/2016/09/ruby-hash-default-value-be-cautious-when-you-use-it/
    h = Hash.new { |hash, key| hash[key] = 0 }

    box_id.split("").each do |letter|
      h[letter] = h[letter] + 1
    end

    hh = Hash.new { |hash, key| hash[key] = 0 }

    h.each do |k,v|
      hh[v] = hh[v] + 1
    end
    
    hh
  end
  
  def self.checksum(box_ids)
    # https://mensfeld.pl/2016/09/ruby-hash-default-value-be-cautious-when-you-use-it/
    h = Hash.new { |hash, key| hash[key] = 0 }


    # http://archive.is/96ko8
    # Jim Weirich
    signatures = box_ids.map { |box_id| signature(box_id) }
    signatures.each do |h1|
      h1.each do |k, v|
        h[k] = h[k] + 1
      end
    end

    h[2] * h[3]
  end
end