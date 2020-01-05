class Direction < ApplicationRecord
    belongs_to :recipe 

    validates :cooking_process, presence: true, length: {minimum: 40}
end
