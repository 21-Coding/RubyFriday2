class Word
  attr_accessor :words, :id
  @@words = {}
  @@total_rows = 0

  def initialize(input, id)
  @input = input
  @id = id
  end
  def self.clear
    @@words = {}
    @@total_rows = 0

  end

  def self.all()
    @@words.values()

  end
  def save
    @@words[self.id] = Word.new(self.words, self.id)
  end

  def update

  end

  def delete

  end

  def edit

  end

end
