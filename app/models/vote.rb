class Vote < ApplicationRecord

  def self.get_top_ten
    order(wins: :desc).limit(10)
  end

  def self.get_bottom_ten
    order(:wins).limit(10)
  end
end
