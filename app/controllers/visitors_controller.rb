class VisitorsController < ApplicationController
  def index
    @myslides = Slide.all
    @allprograms = Watanprogram.all
    @aboutpage = Page.find(1)
    #@organizationpage = Page.find(2)
    @membershippage = Page.find(4)
    @contactpage = Page.find(8)
    @getinvolved = Page.find(5)
    @donatepage = Page.find(3)
    @whereweworkpage = Page.find(9)
    @partnerspage = Page.find(6)
    @networkpage = Page.find(7)
    @impactpage = Page.find(10)

    @imgArray = ["img_academic.jpg", "img_boysandgirls.jpg", "img_boysinschool.jpg", "img_doctor.jpg", "img_ditch.jpg", "img_crane.jpg", "img_mudhut.jpg", "img_training1.jpg", "img_training2.jpg", "img_tent.jpg", "img_training2.jpg"]



    render 'visitors/index'
  end


  def oneslide
    @slide = Slide.find(params[:slide_id])

    render 'visitors/indexslidechk'
  end


  def about
    @aboutpage = Page.find(1)
    render 'visitors/aboutwatan'
  end


  def news
    @posts=Post.all
    @imgArray = ["img_academic.jpg", "img_boysandgirls.jpg", "img_boysinschool.jpg", "img_doctor.jpg", "img_ditch.jpg", "img_crane.jpg", "img_mudhut.jpg", "img_training1.jpg", "img_training2.jpg", "img_tent.jpg", "img_training2.jpg"]
    @allprograms = Watanprogram.all
    render 'visitors/watannews'
  end


  

end
