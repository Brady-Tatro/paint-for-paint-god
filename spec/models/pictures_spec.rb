require "rails_helper"
describe Picture do
  it "should be valid with all fields filled out" do
    picture = Picture.new(army: "Necrons", primer: "Chaos Black", base: "Lead Belcher", highlight: "Necron Compound", shade: "Nuln Oil")
    expect(picture).to be_valid
  end
  it "should be invalid without and army, primer, base, highlight or shade" do
    picture = Picture.new(army: "", primer: "Chaos Black", base: "Lead Belcher", highlight: "Necron Compound", shade: "Nuln Oil")
    expect(picture).to_not be_valid
    picture = Picture.new(army: "Necrons", primer: "", base: "Lead Belcher", highlight: "Necron Compound", shade: "Nuln Oil")
    expect(picture).to_not be_valid
    picture = Picture.new(army: "Necrons", primer: "Chaos Black", base: "", highlight: "Necron Compound", shade: "Nuln Oil")
    expect(picture).to_not be_valid
    picture = Picture.new(army: "Necrons", primer: "Chaos Black", base: "Lead Belcher", highlight: "", shade: "Nuln Oil")
    expect(picture).to_not be_valid
    picture = Picture.new(army: "Necrons", primer: "Chaos Black", base: "Lead Belcher", highlight: "Necron Compound", shade: "")
    expect(picture).to_not be_valid
  end
end
