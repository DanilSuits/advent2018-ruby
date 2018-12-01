require 'advent2018/day_01_first/frequency'

class FrequencyTest < Minitest::Test
  def test_that_frequency_starts_at_zero
    f = Frequency.new
    assert_equal(0, f.frequency)
  end

  def test_that_frequency_changes_accumulate
    f = Frequency.new
    f.on_line "+1"
    assert_equal(1, f.frequency)
  end

  def test_first_example
    f = Frequency.new
    f.on_line "+1"
    f.on_line "+1"
    f.on_line "-2"
    assert_equal(0, f.frequency)
  end

  def test_second_example
    f = Frequency.new
    f.on_line "+1"
    f.on_line "+1"
    f.on_line "+1"
    assert_equal(3, f.frequency)
  end

  def test_third_example
    f = Frequency.new
    f.on_line "-1"
    f.on_line "-2"
    f.on_line "-3"
    assert_equal(-6, f.frequency)
  end

end