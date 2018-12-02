require 'advent2018/day_02_part_2/blue'

class AcceptanceTest  < Minitest::Test
  def test_wibble
    box_ids = %w(abcde fghij klmno pqrst fguij axcye wvxyz)
    assert_equal("fgij", Blue.box_id(box_ids))
  end
end