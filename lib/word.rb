class Word
  attr_accessor :word, :id
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

  end

  def update

  end

  def delete

  end

  def edit

  end

end
