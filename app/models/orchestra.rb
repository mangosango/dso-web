class Orchestra
  attr_reader :members

  def initialize
    @members = []
  end

  def name
    "Dartmouth Symphony Orchestra"
  end

  def initials
    name.split.map {|s| s.chars.first}.join
  end

  def add_member(member)
    @members << member
  end
end
