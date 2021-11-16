require_relative 'kit'
require 'date'

class KitTest

  describe Kit do
    it " type return kit" do
      expect(Kit.new.type).to eq("kit")
    end

    it " title return the capitalized laptop needed " do
      expect(Kit.new.title).to eq('MacBook')
    end

    it "possibility to dragg returns false" do
      expect(Kit.new.draggable?).to be true
    end

    it "date method return a Date object" do
      expect(Kit.new.date).to eq(Date.new(2021, 10, 1))
    end

    it "environement return a region" do
      expect(Kit.new.environment).to eq('Région Sud-Ouest')
    end
  end

end
