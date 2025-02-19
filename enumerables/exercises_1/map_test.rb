gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'

class MapTest < Minitest::Test

  def test_capitalize
    names = ["alice", "bob", "charlie"]
    capitalized_names = names.map do |name|
      name.capitalize
    end
    assert_equal ["Alice", "Bob", "Charlie"], capitalized_names
  end

  def test_doubles
    numbers = [1, 2, 3, 4, 5]
    doubles = numbers.map {|number| number * 2}

    assert_equal [2, 4, 6, 8, 10], doubles
  end

  def test_squares
    # skip
    numbers = [1, 2, 3, 4, 5]
    squares = numbers.map {|number| number **2}

    assert_equal [1, 4, 9, 16, 25], squares
  end

  def test_lengths
    # skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    lengths = names.map {|name| name.length}
    assert_equal [5, 3, 7, 5, 3], lengths
  end

  def test_normalize_zip_codes
    # skip
    numbers = [234, 10, 9119, 38881]
    zip_codes = numbers.map {|number| number.to_s.rjust(5,"0")}
    assert_equal ["00234", "00010", "09119", "38881"], zip_codes
  end

  def test_backwards
    # skip
    names = ["alice", "bob", "charlie", "david", "eve"]
    backwards = names.map {|name| name.reverse}
    assert_equal ["ecila", "bob", "eilrahc", "divad", "eve"], backwards
  end

  def test_words_with_no_vowels
    # skip
    words = ["green", "sheep", "travel", "least", "boat"]
    without_vowels = words.map {|word| word.delete('aeiou')}
    assert_equal ["grn", "shp", "trvl", "lst", "bt"], without_vowels
  end

  def test_trim_last_letter
    # skip
    animals = ["dog", "cat", "mouse", "frog", "platypus"]
    trimmed = animals.map {|animal| animal.chop}
    assert_equal ["do", "ca", "mous", "fro", "platypu"], trimmed
  end

end
