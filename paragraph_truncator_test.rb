# Paragraph Truncator Test
require "minitest/autorun"
require_relative "paragraph_truncator.rb"

class ParagraphTruncatorTest < Minitest::Test

  # Need to test if the truncate_paragraph test returns a shortened character
  # length with the correct cutoff characters than the original paragraph.
  def test_truncate_paragraph
    text_to_shorten = ParagraphTruncator.new(paragraph: "Lengthy text that goes on and on and on and on and on and on and on and on and on! Cats!")
    output = text_to_shorten.truncate_paragraph(text_to_shorten.arguments)


    assert(text_to_shorten.arguments[:character_length] + text_to_shorten.arguments[:cutoff_characters].length <= text_to_shorten.arguments[:paragraph].length)
  end

end
