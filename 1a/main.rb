class Player
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end
  def to_s()
    "Name: #{name} Score: #{score}"
  end
end

rand = Random.new()
players = Array.new(50) {|i| Player.new("Player #{i + 1}", rand.rand(10..300))}
players.each {|player| puts "Ready #{player.name}! Score: #{player.score}"}
