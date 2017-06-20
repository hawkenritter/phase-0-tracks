require_relative 'game'

describe GuessingGame do
  let(:game) { GuessingGame.new("basketball") }

#  it "show the guesses available on initialization" do
#    expect(game.guesses_left).to eq 20
#  end

 it "shows letters the user has to guess" do
    expect(game.letters_remaining).to eq "__________"
  end

it "shows progress made by user" do
  game.check_letter("a")
  expect(game.letters_remaining).to eq "_a_____a__"
  end
end