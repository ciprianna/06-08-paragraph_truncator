# Paragraph Truncator

class ParagraphTruncator

  attr_accessor :arguments

  # Creates an empty Hash and then merges it with default values for the options
  #   Hash.
  #
  # arguments - Hash
  #
  # Returns the Return from the truncate_paragraph method.
  def initialize(arguments = {})
    options = {paragraph: "No paragraph entered.", character_length: 50, cutoff_characters: "..."}
    @arguments = options.merge(arguments)
  end

  # Takes the inputs from the arguments Hash and truncates the paragraph if its
  #   length is greater than the character_length from the arguments Hash.
  #
  # arguments - Hash
  #
  # Returns the shortened_paragraph, a String, with the cutoff_characters,
  #   another String, from the arguments Hash.
  def truncate_paragraph(arguments)
    paragraph = arguments[:paragraph]
    if paragraph.length > arguments[:character_length]
      shortened_paragraph = paragraph[0..arguments[:character_length]]
      paragraph_output = shortened_paragraph + arguments[:cutoff_characters]
      return paragraph_output
    end
    return paragraph
  end

end
