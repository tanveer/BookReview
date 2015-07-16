class Book < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  has_many :reviews
  
  has_attached_file :book_image, :styles => { :book_index => "250x250>", :book_show => "300x350>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :book_image, :content_type => /\Aimage\/.*\Z/
end
