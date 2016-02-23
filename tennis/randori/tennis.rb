class Player
  SCORES = [0, 15, 30, 40, "WON"]
  INITIAL_WON_BALLS = 0
  WON_BALL_INCREMENT = 1

  def initialize
    @won_balls = INITIAL_WON_BALLS
  end

  def score
    SCORES[@won_balls]
  end

  def win_ball
    @won_balls += WON_BALL_INCREMENT
  end
end

describe "Tennis game" do
  subject(:player) { Player.new }

  it "initial player score" do
    expect(player.score).to eq(0)
  end

  it "player wins one ball" do
    player.win_ball
    expect(player.score).to eq(15)
  end

  it "player wins two balls" do
    2.times { player.win_ball }
    expect(player.score).to eq(30)
  end

  it "player wins three balls" do
    3.times { player.win_ball }
    expect(player.score).to eq(40)
  end

  it "player wins the game" do
    4.times { player.win_ball }
    expect(player.score).to eq("WON")
  end
end
