class Watanprogram < ActiveRecord::Base
  translates :name, :body, :body2, :body3, :locations
  has_many :slides
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/


  has_many :posts_watanprograms, :dependent => :destroy
  has_many :posts, :through => :posts_watanprograms



  has_many :projects_watanprograms, :dependent => :destroy
  has_many :projects, :through => :projects_watanprograms

  belongs_to :site_image, :foreign_key => :image1_id
  belongs_to :site_image, :foreign_key => :image2_id
  belongs_to :site_image, :foreign_key => :image3_id
  belongs_to :site_image, :foreign_key => :image4_id


end
