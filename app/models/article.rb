class Article < ApplicationRecord
  has_many :comments, dependent: :destroy

  validates :first_name, presence: true,
            length: { minimum: 5 }
  validates :last_name, presence: true,
            length: { minimum: 5 }
  validates :city, presence: true

end
