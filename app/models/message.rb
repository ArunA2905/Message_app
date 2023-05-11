class Message < ApplicationRecord
    validates :message, presence: true, length: {minimum:1, maximum:100} 
end