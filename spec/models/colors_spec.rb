require 'rails_helper'

describe Color do
  it "should be valid with a name" do
    color = Color.new(name: "Abaddon Black")
    expect(color).to be_valid
  end
end
