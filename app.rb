# Driver
require "active_support"
require "active_support/core_ext/String/filters.rb"
#require_relative "paragraph_truncator.rb"


puts "What paragraph would you like to truncate?"
paragraph = gets.chomp

puts "How many characters would you like to have?"
character_length = gets.to_i

puts paragraph.truncate(character_length)

# puts "Would you like to set your own character length? ('yes' or 'no') The default value is currently set to 50 characters."
# set_own_char_length = gets.chomp.downcase
#
# if set_own_char_length == "yes"
#   puts "What character length would you like to use?"
#   character_length = gets.to_i
# else
#   puts "Okay, we'll use the default value."
# end


# puts "Would you like to set your own cutoff characters? ('yes' or 'no') The default cutoff characters are currently '...'."
# set_own_cutoff_chars = gets.chomp.downcase
#
# if set_own_cutoff_chars == "yes"
#   puts "What cutoff characters would you like to use?"
#   cutoff_characters = gets.chomp
# else
#   "Okay, we'll use the default."
# end

#
# if (set_own_cutoff_chars == "yes") && (set_own_char_length == "yes")
#   text = ParagraphTruncator.new(paragraph: paragraph, cutoff_characters: cutoff_characters, character_length: character_length)
#   puts "#{text.truncate_paragraph(text.arguments)}"
# elsif (set_own_cutoff_chars != "yes") && (set_own_char_length == "yes")
#   text = ParagraphTruncator.new(paragraph: paragraph, character_length: character_length)
#   puts "#{text.truncate_paragraph(text.arguments)}"
# elsif (set_own_cutoff_chars == "yes") && (set_own_char_length != "yes")
#   text = ParagraphTruncator.new(paragraph: paragraph, cutoff_characters: cutoff_characters)
#   puts "#{text.truncate_paragraph(text.arguments)}"
# else
#   text = ParagraphTruncator.new(paragraph: paragraph)
#   puts "#{text.truncate_paragraph(text.arguments)}"
# end
