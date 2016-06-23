class Slide < ActiveRecord::Base

  belongs_to :watanprogram
  belongs_to :transition
  translates :title, :body, :imgalt
  has_attached_file :file, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\Z/


  has_many :institutes_slides, :dependent => :destroy
  has_many :institutes, :through => :institutes_slides













end
