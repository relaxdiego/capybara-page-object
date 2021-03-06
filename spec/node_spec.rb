require 'helper'

describe "Page" do
  context "#classes" do
    it "returns an array of class names" do
      anchor = CapybaraPageObject::Anchor.from_string '<a class="foo bar">', 'a'
      anchor.classes.should =~ ['foo', 'bar']
    end
    it "handles extraneous spacing" do
      anchor = CapybaraPageObject::Anchor.from_string '<a class="  foo   bar  ">', 'a'
      anchor.classes.should =~ ['foo', 'bar']
    end
    it "returns an empty array classes is empty" do
      anchor = CapybaraPageObject::Anchor.from_string '<a class="  ">', 'a'
      anchor.classes.should be_empty
    end
    it "returns an empty array when the classes attribute is not present" do
      anchor = CapybaraPageObject::Anchor.from_string '<a/>', 'a'
      anchor.classes.should be_empty
    end
  end
end
