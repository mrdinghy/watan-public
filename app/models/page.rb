class Page < ActiveRecord::Base
  translates :title, :body, :body2, :body3
  belongs_to :institute

  belongs_to :site_image, :foreign_key => :image1_id
  belongs_to :site_image, :foreign_key => :image2_id
  belongs_to :site_image, :foreign_key => :image3_id
  belongs_to :site_image, :foreign_key => :image4_id




  def imageplace(imagenumber)







  end







end
