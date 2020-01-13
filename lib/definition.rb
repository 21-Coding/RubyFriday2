class Definition

  attr_reader :id
  attr_accessor :text, :word_id

  @@definitions = {}
  @@total_rows = 0

  def initialize(text, word_id, id)
    @text = text
    @word_id = word_id
    @id = id || @@total_rows += 1
  end

  def self.all
    @@definitions.values
  end

  def save
    @@definitions[self.id] = Definition.new(self.text, self.id, self.word_id)
  end




  def self.clear
    @@definitions = {}
    @@total_rows = 0

  end
end
