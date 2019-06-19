class Song < ApplicationRecord
    belongs_to :user
    validates :title, uniqueness: true
    validates :title, format: {with: /\A[A-Z]/, message: "first letter must be capitalized"}
    validates :artist, format: {with: /\A[A-Z]/, message: "first letter must be capitalized"}
    
end
