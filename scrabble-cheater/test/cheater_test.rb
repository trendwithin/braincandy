require './test/minitest_helper'
require 'cheater'

class TestCheater < MiniTest::Test
  def setup
    @cheater = Cheater.new
    @letter = 'a'
    @letters = 'abc'
    @car = 'acr'
    @abattis = 'sitbata'
  end

  def test_instance_of
    assert_instance_of Cheater, @cheater
  end

  def test_basecase_string_of_one_letter
    validation_array = ['a']
    test_array = @cheater.letter_combinations(@letter)
    assert_equal validation_array.sort, test_array.sort
  end

  def test_string_of_3_letters
    validation_array = %w( a b c abc ab bc ac )
    test_array = @cheater.letter_combinations(@letters)
    assert_equal validation_array.sort, test_array.sort
  end

  def test_is_a_found_in_dictionary
    assert_equal ['a'], @cheater.unjumble(@letter)
  end

  def test_word_car_is_found_in_dictionary
    words = @cheater.unjumble(@car)
    assert true, words.include?('car')
    assert true, words.include?('arc')
  end

  def test_7_letter_word_and_combinations
    words = @cheater.unjumble(@abattis)
    assert true, words.include?('abattis')
    assert true, words.include?('bat')
    assert true, words.include?('sits')
    assert true, words.include?('stab')
  end
end
