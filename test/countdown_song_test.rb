gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/countdown_song'
require_relative './verse_role_test'
require_relative './bottle_verse_test'

class VerseFake
  def self.lyrics(n)
    "This is verse #{n}."
  end
end

class VerseFakeTest < Minitest::Test
  include VerseRoleTest

  def setup
    @role_player = VerseFake
  end
end

class CountdownSongTest < Minitest::Test
  def test_a_single_verse
    expected = 'This is verse 500.'
    assert_equal expected,
                 CountdownSong.new(verse_template: VerseFake).verse(500)
  end

  def test_verses
    expected =
      "This is verse 99.\n" +
      "This is verse 98.\n" +
      "This is verse 97."
    assert_equal expected,
                 CountdownSong.new(verse_template: VerseFake).verses(99, 97)
  end

  def test_song
    expected =
      "This is verse 69.\n" +
      "This is verse 68.\n" +
      "This is verse 67.\n" +
      "This is verse 66.\n" +
      "This is verse 65."
    assert_equal expected,
                 CountdownSong.new(verse_template: VerseFake,
                                   max: 69, min: 65).song
  end
end
