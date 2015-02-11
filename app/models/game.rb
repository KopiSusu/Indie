class Game < ActiveRecord::Base

  has_many :reviews
  has_attached_file :image, :styles => {  small: "150x150>", med: "350x350>", large: "500x500>" }

  validates :title,
    presence: true

  validates :developer,
    presence: true

  validates :description,
    presence: true

  validates :release_date,
    presence: true

  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def review_average
    if reviews.size > 0 
      return "#{reviews.sum(:rating_out_of_ten)/reviews.size}/10"
    else
      return 'No Current Reviews'
    end
  end

  def self.search(search)
    if search
        where('title LIKE :search OR developer like :search' , {:search => "%#{search}%"})
    end
  end

end
