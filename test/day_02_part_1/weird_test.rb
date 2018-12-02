class WeirdTest < Minitest::Test
  def test_weird_hash_behavior
    left = { "a" => 1, "b" => 1}
    right = { "b" => 10, "c" => 10}
    result = left.merge(right) { |k,v1,v2| v1 + 3}

    assert_equal(1, result["a"])
    assert_equal(4, result["b"])
    assert_equal(10, result["c"])
  end
end