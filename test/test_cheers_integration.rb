require_relative 'helper'

class TestCheersIntegration < MiniTest::Unit::TestCase

  def test_a_name_with_no_vowels
    shell_output = ''
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts 'ZIM'
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a... Z
Give me an.. I
Give me a... M
EOS
    assert_equal expected_output, shell_output
  end

  def test_a_name_with_no_caps
    shell_output = ''
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts 'mitch'
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a... M
Give me an.. I
Give me a... T
Give me a... C
Give me a... H
EOS
    assert_equal expected_output, shell_output
  end

  def test_a_name_with_all_caps
    shell_output = ''
    IO.popen('ruby cheers.rb', 'r+') do |pipe|
      pipe.puts 'MITCH'
      pipe.close_write
      shell_output = pipe.read
    end
    expected_output = <<EOS
What's your name?
Give me a... M
Give me an.. I
Give me a... T
Give me a... C
Give me a... H
EOS
    assert_equal expected_output, shell_output
  end


end