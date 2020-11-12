class Book < ApplicationRecord
    validates :author, presence :true 
    enum status: [prestado, en_estante]
end
