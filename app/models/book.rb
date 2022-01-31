class Book < ApplicationRecord
    validates :title, presence: true, format: { with: /[^( )][0-9a-zA-Z( )]+[^( )]/, message: "letters and in-between spaces only" }
    validates :author, presence: true, format: { with: /[^( )][0-9a-zA-Z( )]+[^( )]/, message: "letters and in-between spaces only" }
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
    validates :publish_date, presence: true
end
