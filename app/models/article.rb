class Article < ApplicationRecord
  belongs_to :user

  validates :first_name, presence: true,
            length: { minimum: 5 }
  validates :last_name, presence: true,
            length: { minimum: 5 }
  validates :city, presence: true

end
