class Frequency
  def initialize()
    @score = 0
  end
  def frequency
    @score
  end

  def on_line(line)
    @score += line.to_i
  end
end