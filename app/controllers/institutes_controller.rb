class InstitutesController < ApplicationController
  before_action :set_institute, only: [:show, :edit, :update, :destroy]

  # GET /institutes
  # GET /institutes.json
  def index
    @institutes = Institute.where('id <> ?', 1)
  end

  # GET /institutes/1
  # GET /institutes/1.json
  def show
    @projects = InstitutesProject.where('institute_id=?', @institute.id)
    @posts = InstitutesPost.where('institute_id=?', @institute.id)

  end

  # GET /institutes/new
  def new
    before_action :authenticate_user!
    @institute = Institute.new
  end

  # GET /institutes/1/edit
  def edit
  end

  # POST /institutes
  # POST /institutes.json
  def create
    before_action :authenticate_user!
    @institute = Institute.new(institute_params)

    respond_to do |format|
      if @institute.save
        format.html { redirect_to @institute, notice: 'Institute was successfully created.' }
        format.json { render :show, status: :created, location: @institute }
      else
        format.html { render :new }
        format.json { render json: @institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutes/1
  # PATCH/PUT /institutes/1.json
  def update
    before_action :authenticate_user!
    respond_to do |format|
      if @institute.update(institute_params)
        format.html { redirect_to @institute, notice: 'Institute was successfully updated.' }
        format.json { render :show, status: :ok, location: @institute }
      else
        format.html { render :edit }
        format.json { render json: @institute.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutes/1
  # DELETE /institutes/1.json
  def destroy
    before_action :authenticate_user!
    @institute.destroy
    respond_to do |format|
      format.html { redirect_to institutes_url, notice: 'Institute was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_institute
      @institute = Institute.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def institute_params
      params.require(:institute).permit(:name, :description, :logo)
    end
end
