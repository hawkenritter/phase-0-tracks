require_relative 'live_code'

describe Newsroom do
  let(:news) { Newsroom.new("ABC", 300_000) }

  it "has a readable name" do
      expect(news.name).to eq "ABC"
  end

  it "has a readable budget" do
      expect(news.budget).to eq 300_000
  end

  it "can calculate the salary given a reporters name" do
      expect(news.salary_for("Anderson Cooper")).to eq 150000
  end

  it "will not add a reporter if the budget doesn't allow" do
      news.add_reporter("Wolf Blitzer", ["specializing in politics", "moustaches", "yelling"])
      news.add_reporter("Anderson Cooper", ["specializing in politics", "economics", "grey hair"])
      expect(news.add_reporter("Jim Acosta", ["specializing in economics", "smiling"])).to eq "We can't afford to hire Jim Acosta"
  end
end