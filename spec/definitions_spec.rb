require('rspec')
require('definition')
require('word')

describe '#Definition' do

  before(:each) do
    Definition.clear()
  end

  describe('.all') do
    it("returns an empty array when there is no definition text.") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe('.save') do
    it "saves a definition" do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", 1, nil)
      definition.save()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('#update') do
    it "updates a definition by id" do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", nil, nil)
      definition.save()
      definition.update("Share(n): a part or portion of a larger amount which is divided among a number of people, or to which a number of people contribute.", nil)
      expect(definition.text).to(eq("Share(n): a part or portion of a larger amount which is divided among a number of people, or to which a number of people contribute."))
    end
  end


  describe('.clear') do
    it("clears all definitions from list.") do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", nil, nil)
      definition.save()
      Definition.clear()
      expect(Definition.all).to(eq([]))
    end
  end

  describe('#==') do
    it "is the same definition if attributes are matching another definition" do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", nil, nil)
      definition2 = Definition.new("Share(v): have a portion of (something) with another or others.", nil, nil)
      expect(definition).to(eq(definition2))
    end
  end
  describe('#delete') do
    it "deletes a definition" do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", nil, nil)
      definition.save()
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", 1, nil)
      definition.save()
      definition.delete()
      expect(Definition.all).to(eq([definition]))
    end
  end

  describe('.find') do
    it "finds a definition by id" do
      definition = Definition.new("Share(v): have a portion of (something) with another or others.", 1, nil)
      definition.save()
      definition2 = Definition.new("Share(v): have a portion of (something) with another or others.", 1, nil)
      definition2.save()
      expect(Definition.find(definition.id)).to(eq(definition))
    end
  end


end
