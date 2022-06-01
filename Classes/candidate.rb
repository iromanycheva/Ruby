class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace
  #details is a default argument
  def initialize(name, details = {})
    defaults = {age: 35, occupation: "Candidate", hobby: "Running", birthplace: "USA"}
    defaults.merge!(details)
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end
info = {age: 53, occupation: "Banker", hobby: "Fishing", birthplace: "California"}
senator = Candidate.new("Mr.Smith", info)
p senator.occupation
p senator.hobby
p senator.name

senator2 = Candidate.new("Mr. White", hobby: "Horror movies", occupation: "Hiking")
p senator2.occupation
p senator2.hobby
p senator2.name
p senator2.birthplace
