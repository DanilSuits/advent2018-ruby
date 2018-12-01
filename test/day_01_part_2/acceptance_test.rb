require 'advent2018/day_01_part_2/purple'

class AcceptanceTest
  def purple(signals)
    Purple.purple(signals)
  end

=begin
    +1, -1 first reaches 0 twice.
    +3, +3, +4, -2, -4 first reaches 10 twice.
    -6, +3, +8, +5, -6 first reaches 5 twice.
    +7, +7, -2, -7, -4 first reaches 14 twice.
=end

  def test_first_example
    assert_equal(0, purple(["+1", "-1"]))
  end

  def test_second_example
    assert_equal(10, purple(["+3", "+3", "+4", "-2", "-4"]))
  end

  def test_third_example
    assert_equal(5, purple(["-6", "+3", "+8", "+5", "-6"]))
  end

  def test_fourth_example
    assert_equal(14, purple(["+7", "+7", "-2", "-7", "-4"]))
  end

end