class Photo < ApplicationRecord
    belong_to :user
    belongs_to :place
end
