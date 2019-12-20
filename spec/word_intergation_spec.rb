require('rspec')
require('word.rb')

describe '#Word' do

  before(:each) do
    Word.clear()
  end

  describe('.all') do
    it("returns an empty array when there are no words") do
      expect(Word.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears all words from list") do
      word = Word.new("Share", nil)
      word.save()
      Word.clear()
      expect(Word.all).to(eq([]))
    end
  end


end
