class Player < ApplicationRecord
  belongs_to :club
  def self.search(search)
    where("firstname LIKE ? OR lastname LIKE ?", "%#{search}%", "%#{search}%") 
  end
end
