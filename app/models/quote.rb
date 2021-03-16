class Quote < ApplicationRecord
  validates :desc, presence: true, length: {maximum: 200}
  validates :name, presence: true, length: {maximum: 200}
  validates :username, presence: true 
end