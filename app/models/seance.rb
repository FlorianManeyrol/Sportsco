class Seance < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, uniqueness: true, length: { in: 1..50 }
end
