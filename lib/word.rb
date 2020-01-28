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



  def self.find(id)
    @@words[id]

  end



  def self.all
    @@words.values

  end


  def self.clear
    @@words = {}
    @@total_rows = 0

  end


  def save
    @@words[self.id] = Word.new(self.word, self.id)
  end


  def delete
    @@words.delete(self.id)
  end

  def update(word)
    self.word = word
    @@words[self.id] = Word.new(self.word, self.id)
  end




end
