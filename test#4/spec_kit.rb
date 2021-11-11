class KitTest

  test " type return kit" do
    Kit.type('kit')
    expect(Kit.type).to eq("kit")
  end

  test " title return the capitalized laptop needed " do
    Kit.title('MacBook')
    # asser_equal "MacBook", kit.title
    expect(Kit.title.count).to eq(1)
  end

  test "possibility to dragg returns false" do

    expect(Kit.draggable?).to be false
  end

  test "environement return a region" do
    Kit.environment("Région Sud-Ouest'")
    expect(Kit.environment.count).to eq(1)
  end

end
