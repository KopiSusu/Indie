class Game < ActiveRecord::Base

  has_many :reviews

  validates :title,
    presence: true

  validates :developer,
    presence: true

  validates :description,
    presence: true

  validates :poster_image_url,
    presence: true

  validates :release_date,
    presence: true

  def review_average

    if reviews.size > 0 
      return "#{reviews.sum(:rating_out_of_ten)/reviews.size}/10"
    else
      return 'No Current Reviews'
    end

  end

end
