class WatanprogramsController < ApplicationController
  before_action :set_watanprogram, only: [:show, :edit, :update, :destroy]

  # GET /watanprograms
  # GET /watanprograms.json
  def index
    @watanprograms = Watanprogram.all
  end

  # GET /watanprograms/1
  # GET /watanprograms/1.json
  def show


    @images = SiteImage.all

    @imagearray=[1,2,3,4]
    @mybenis = Beneficiary.where(watanprogram_id: @watanprogram.id).order(:calcyear)
    @totbenis = @mybenis.sum(:calccount)
    @projects = ProjectsWatanprogram.where('watanprogram_id = ?', @watanprogram.id)
    @posts = PostsWatanprogram.where('watanprogram_id = ?', @watanprogram.id)

  end

  # GET /watanprograms/new
  def new

    @watanprogram = Watanprogram.new
  end

  # GET /watanprograms/1/edit
  def edit
  end

  # POST /watanprograms
  # POST /watanprograms.json
  def create
    @watanprogram = Watanprogram.new(watanprogram_params)

    respond_to do |format|
      if @watanprogram.save
        format.html { redirect_to @watanprogram, notice: 'Watanprogram was successfully created.' }
        format.json { render :show, status: :created, location: @watanprogram }
      else
        format.html { render :new }
        format.json { render json: @watanprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /watanprograms/1
  # PATCH/PUT /watanprograms/1.json
  def update

    respond_to do |format|
      if @watanprogram.update(watanprogram_params)
        format.html { redirect_to @watanprogram, notice: 'Watanprogram was successfully updated.' }
        format.json { render :show, status: :ok, location: @watanprogram }
      else
        format.html { render :edit }
        format.json { render json: @watanprogram.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /watanprograms/1
  # DELETE /watanprograms/1.json
  def destroy

    @watanprogram.destroy
    respond_to do |format|
      format.html { redirect_to watanprograms_url, notice: 'Watanprogram was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  def loadbenis

   cs = Beneficiary.create([
                               {watanprogram_id: 1, calcyear: 2012, calccount: 2020},
                               {watanprogram_id: 1, calcyear: 2013, calccount: 200},
                               {watanprogram_id: 1, calcyear: 2014, calccount: 7585},
                               {watanprogram_id: 1, calcyear: 2015, calccount: 2397},
                               {watanprogram_id: 1, calcyear: 2016, calccount: 3472}
                           ])



   ed = Beneficiary.create([
                               {watanprogram_id: 2, calcyear: 2012, calccount: 70},
                               {watanprogram_id: 2, calcyear: 2013, calccount: 3160},
                               {watanprogram_id: 2, calcyear: 2014, calccount: 8333},
                               {watanprogram_id: 2, calcyear: 2015, calccount: 32566},
                               {watanprogram_id: 2, calcyear: 2016, calccount: 33060}
                           ])


   fsl = Beneficiary.create([
                               {watanprogram_id: 3, calcyear: 2012, calccount: 35000},
                               {watanprogram_id: 3, calcyear: 2013, calccount: 215551},
                               {watanprogram_id: 3, calcyear: 2014, calccount: 524000},
                               {watanprogram_id: 3, calcyear: 2015, calccount: 100000},
                               {watanprogram_id: 3, calcyear: 2016, calccount: 77309}
                           ])


   econ = Beneficiary.create([
                               {watanprogram_id: 4, calcyear: 2012, calccount: 150},
                               {watanprogram_id: 4, calcyear: 2013, calccount: 360},
                               {watanprogram_id: 4, calcyear: 2014, calccount: 26455},
                               {watanprogram_id: 4, calcyear: 2015, calccount: 726},
                               {watanprogram_id: 4, calcyear: 2016, calccount: 82}
                           ])


   shelter = Beneficiary.create([
                               {watanprogram_id: 5, calcyear: 2012, calccount: 13000},
                               {watanprogram_id: 5, calcyear: 2013, calccount: 12950},
                               {watanprogram_id: 5, calcyear: 2014, calccount: 69250},
                               {watanprogram_id: 5, calcyear: 2015, calccount: 161090},
                               {watanprogram_id: 5, calcyear: 2016, calccount: 171511}
                           ])


   protect = Beneficiary.create([
                               {watanprogram_id: 6, calcyear: 2012, calccount: 875},
                               {watanprogram_id: 6, calcyear: 2013, calccount: 11000},
                               {watanprogram_id: 6, calcyear: 2014, calccount: 7993},
                               {watanprogram_id: 6, calcyear: 2015, calccount: 13466},
                               {watanprogram_id: 6, calcyear: 2016, calccount: 11913}
                           ])


   health = Beneficiary.create([
                               {watanprogram_id: 7, calcyear: 2012, calccount: 800},
                               {watanprogram_id: 7, calcyear: 2013, calccount: 370000},
                               {watanprogram_id: 7, calcyear: 2014, calccount: 267500},
                               {watanprogram_id: 7, calcyear: 2015, calccount: 189800},
                               {watanprogram_id: 7, calcyear: 2016, calccount: 108089}
                           ])


   water = Beneficiary.create([
                               {watanprogram_id: 8, calcyear: 2012, calccount: 0},
                               {watanprogram_id: 8, calcyear: 2013, calccount: 1000},
                               {watanprogram_id: 8, calcyear: 2014, calccount: 200000},
                               {watanprogram_id: 8, calcyear: 2015, calccount: 841066},
                               {watanprogram_id: 8, calcyear: 2016, calccount: 1513138}
                           ])


  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_watanprogram
      @watanprogram = Watanprogram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def watanprogram_params
      params.require(:watanprogram).permit(:name, :body, :body2, :body3, :image1, :image2, :image3, :image4,
                                           :imagewidth1, :imagewidth2, :imagewidth3, :imagewidth4image, :locations)
    end
end
