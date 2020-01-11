class Word
  attr_accessor :word, :id
  @@words = {}
  @@total_rows = 0

  def initialize(word, id)
  @word = word
  @id = id || @@total_rows += 1
  end
  def self.clear
    @@words = {}
    @@total_rows = 0

  end

  def ==(matching_word)
    self.word() == matching_word.word()
  end

  def self.all()
    @@words.values()

  end


  def save
    @@words[self.id] = Word.new(self.word, self.id)
  end


  def self.find_word(id)
    @@words[id]

  end


  def update

  end


  def delete

  end

  def edit

  end

end
