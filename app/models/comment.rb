class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :place
    after_create :send_comment_email

    RATINGS = {
        'one star': '1_star',
        'two stars': '2_stars',
        'three stars': '3_stars',
        'four stars': '4_stars',
        'five stars': '5_stars',
    }

    def humanized_rating
        RATINGS.invert[self.rating]
    end
    
    def send_comment_email
        # self means current comment being looked at
        NotificationMailer.comment_added(self).deliver
    end

end
