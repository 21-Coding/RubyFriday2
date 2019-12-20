class Word
  attr_accessor :word, :id
  @@words = {}

  def initialize(input, id)
  @input = input
  @id = id
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
