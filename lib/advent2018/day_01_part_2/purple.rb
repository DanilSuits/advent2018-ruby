require_relative '../day_01_first/frequency'

module Purple
  def self.infinite_loop
    # https://stackoverflow.com/a/27139962/54734
    loop do
      yield
    end
  end

  def self.degenerate_loop
    raise "Out of patience"
  end

  def self.finite_loop
    (0..5000).each do yield end
    # TODO: need to learn what to do here.
    raise "Out of patience"
  end
  
  def self.purple(signals)

    f = Frequency.new

    # https://mensfeld.pl/2016/09/ruby-hash-default-value-be-cautious-when-you-use-it/
    h = Hash.new { |hash, key| hash[key] = 0 }

    h[f.frequency] = 1

    self.finite_loop do
      signals.each do |frequency|
        f.on_line(frequency)
        # https://stackoverflow.com/a/1402764/54734
        return f.frequency if h[f.frequency] == 1

        h[f.frequency] = 1

      end
    end
  end
end