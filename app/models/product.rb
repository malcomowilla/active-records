class Product < ActiveRecord::Base
    def reviews
        has_many :reviews
        has_many :users, through: :reviews
    end

    def leave_review(user, star_rating, comment)
        Review.create(star_rating:star_rating, comment:comment, product_id:self.id, user_id:user.id)
    end

    def average_rating
        Review.average(:rating)
    end

    def print_all_reviews
        "Review for#{self.name} by #{user.name}:#{review.star_rating}#{review.comment} "
    end
end

