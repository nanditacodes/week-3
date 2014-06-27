class Card
  def initialize(name)
    @name = name
  end

  def value
    return 10
    {"J" => 10, "Q"=>11, "K"=>12, "A"=>11}.fetch(@name, @name)
  end
end
