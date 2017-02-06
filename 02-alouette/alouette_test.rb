gem 'minitest', '>= 5.0.0'
require 'minitest/spec'
require 'minitest/reporters'
require 'minitest/autorun'
require_relative 'alouette'

Minitest::Reporters.use!

class AlouetteTest < Minitest::Test
  describe "lines_for_verse" do
    it "returns an array of strings" do
      lines = Alouette.lines_for_verse(3)

      lines.must_be_kind_of Array

      lines.each do |line|
        line.must_be_kind_of String
      end
    end

    it "generates the correct line for the first verse" do
      skip
      Alouette.lines_for_verse(0).must_equal ['Et la tête!']
    end

    it "generates the correct lines for the third verse" do
      skip
      expected_lines = [
        "Et les yeux!",
        "Et le bec!",
        "Et la tête!"
      ]
      Alouette.lines_for_verse(2).must_equal expected_lines
    end
  end

  describe "verse" do
    it "returns a string" do
      skip
      Alouette.verse(3).must_be_kind_of String
    end

    it "first two lines begin with 'Je te plumerai'" do
      skip
      lines = Alouette.verse(3).split("\n")

      # If there aren't at least 2 lines, don't continue
      lines.length.must_be :>, 1, "Not enough lines for this test"

      2.times do |i|
        lines[i].start_with?('Je te plumerai').must_equal true, "Line #{i} didn't start with 'Je te plumerai'"
      end
    end

    it "last three lines are 'Alouette! Alouette! A-a-a-ah'" do
      skip
      lines = Alouette.verse(3).split("\n")

      # If there aren't at least 3 lines, don't continue
      lines.length.must_be :>, 2, "Not enough lines for this test"

      lines[-3].must_equal "Alouette!"
      lines[-2].must_equal "Alouette!"
      lines[-1].must_equal "A-a-a-ah"
    end

    it "middle lines begin with 'Et ' and end with '!'" do
      skip
      lines = Alouette.verse(3).split("\n")

      # If there aren't at least 6 lines, don't continue
      lines.length.must_be :>, 5, "Not enough lines for this test"

      # Slice off the first 2 and last 3 lines
      lines = lines[2, lines.length-5]

      lines.each do |line|
        line.start_with?("Et ").must_equal true, "Inner line didn't start with 'Et '"
        line.end_with?("!").must_equal true, "Inner line didn't end with '!'"
      end
    end

    it "generates the third verse" do
      skip
      expected_verse = <<-__END_VERSE__
Je te plumerai les yeux.
Je te plumerai les yeux.
Et les yeux!
Et les yeux!
Et le bec!
Et le bec!
Et la tête!
Et la tête!
Alouette!
Alouette!
A-a-a-ah
__END_VERSE__
      expected_verse.strip!
      Alouette.verse(2).must_equal expected_verse
    end
  end

  describe "sing" do
    # Load the canonical lyrics from disk
    let(:expected_lyrics) do
      skip
      File.read(File.dirname(__FILE__) + '/alouette_lyrics.txt').strip
    end

    it "returns a string" do
      skip
      Alouette.sing.must_be_kind_of String
    end

    it "begins and ends with the refrain" do
      skip
      song = Alouette.sing
      refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."
      song.start_with?(refrain + "\n\n").must_equal true, "Song didn't begin with the refrain"
      song.end_with?("\n\n" + refrain).must_equal true, "Song didn't end with the refrain"
    end

    it "generates the full lyrics" do
      skip
      Alouette.sing.must_equal expected_lyrics
    end
  end
end
