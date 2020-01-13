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
end
