require('rspec')
require('definition.rb')

describe '#Definition' do

  before(:each) do
    Definition.clear()
  end

  describe('.all') do
    it("returns an empty array when there is no definition text.") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.clear') do
    it("clears all definitions from list.") do
      definition = Definition.new("Share", nil, nil)
      definition.save()
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it "is the same definition if attributes are matching another definition" do
      definition = Definition.new("Share", nil, nil)
      definition2 = Definition.new("Share", nil, nil)
      expect(definition).to(eq(definition2))
    end
  end
end
