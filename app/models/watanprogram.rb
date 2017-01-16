class Watanprogram < ActiveRecord::Base
  translates :name, :body
  has_many :slides
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  has_many :posts_watanprograms, :dependent => :destroy
  has_many :posts, :through => :posts_watanprograms



  has_many :projects_watanprograms, :dependent => :destroy
  has_many :projects, :through => :projects_watanprograms

end
