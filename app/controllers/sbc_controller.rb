class SbcController < ApplicationController
  def index




    @myslides = Slide.all
    @allprograms = Watanprogram.all
    @aboutpage = Page.find(1)
    @organizationpage = Page.find(2)
    @membershippage = Page.find(4)
    #@contactpage = Page.find(5)

    @donatepage = Page.find(3)
    @imgArray = ["img_academic.jpg", "img_boysandgirls.jpg", "img_boysinschool.jpg", "img_doctor.jpg", "img_ditch.jpg", "img_crane.jpg", "img_mudhut.jpg", "img_training1.jpg", "img_training2.jpg", "img_tent.jpg", "img_training2.jpg"]



    render 'visitors_sbc/index'
  end



end
