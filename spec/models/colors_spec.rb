require 'rails_helper'

describe Color do
  it "should be valid with a name" do
    color = Color.new(name: "Abaddon Black", hex: '#834F44')
    expect(color).to be_valid
  end
  it "should not be valid without a name" do
    color = Color.new(name: "")
  end
  it "should not be valid with an invalid hex" do
    color = Color.new(name: "Abaddon Black", hex: '###')
  end
end
