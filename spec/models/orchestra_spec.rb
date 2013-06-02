require 'minitest/autorun'
require_relative '../../app/models/orchestra'

describe Orchestra do
  subject       { Orchestra.new }
  let(:members) { [] }

  it "should be named" do
    subject.name.must_equal "Dartmouth Symphony Orchestra"
  end

  it "should have short name" do
    subject.initials.must_equal "DSO"
  end

  specify { subject.members.must_be_empty }

  describe "#add_member" do
    it "adds the member to the orchestra" do
      member = Object.new
      subject.add_member(member)
      subject.members.must_include(member)
    end
  end
end
