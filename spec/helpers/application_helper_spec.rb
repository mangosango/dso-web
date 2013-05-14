require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the ApplicationHelper. For example:
#
# describe ApplicationHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       helper.concat_strings("this","that").should == "this that"
#     end
#   end
# end
describe ApplicationHelper do
  describe "#app_name" do
    it "should return DSO" do
      expect(helper.app_name).to match /DSO/
    end
  end
   describe "#full_title" do
    it "should return title of the form 'Page Name | App Name'" do
      expect(helper.full_title("Welcome")).to match /Welcome \| DSO/
    end
  end
end
