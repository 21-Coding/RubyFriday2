require('rspec')
require('word.rb')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no words.") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('#==') do
    it "is the same word if attributes are matching another word" do
      word = Word.new("Share", nil)
      word2 = Word.new("Share", nil)
      expect(word).to(eq(word2))
    end
  end

  describe('.clear') do
    it("clears all words from list.") do
      word = Word.new("Share", nil)
      word.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end

  describe('.find_word') do
    it("finds a word within the list.") do
      word = Word.new("Share", nil)
      word.save()
      expect(Word.find_word(word.id)).to(eq(word))
    end
  end

  describe('.save') do
    it "saves a word" do
      word = Word.new("Share", nil)
      word.save()
      word2 = Word.new("Share", nil)
      word2.save()
      expect(Word.all).to(eq([word,word2]))
    end
  end

  describe('.delete') do
    it "deletes a word" do
      word = Word.new("Share", nil)
      word.save()
      word2 = Word.new("Share", nil)
      word2.save()
      word.delete()
      expect(Word.all).to(eq([word2]))
    end
  end





end
