require 'advent2018/day_02_part_1/green'

class AcceptanceTest < Minitest::Test
  def test_checksum_of_example
    box_ids = %w(abcdef bababc abbcde abcccd aabcdd abcdee ababab)
    assert_equal(12, Green.checksum(box_ids))
  end
end