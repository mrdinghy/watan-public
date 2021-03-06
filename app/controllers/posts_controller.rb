class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @images = SiteImage.all
    @postdocuments = SiteDocument.where('documentable_type = ? and documentable_id = ?', 'post', @post.id)
    @new_site_document = SiteDocument.new

    @postimages = SiteImage.where('imageable_type = ? and imageable_id = ?', 'post', @post.id)
    @new_site_image = SiteImage.new

    @comments = Comment.where('commentable_type = ? and commentable_id = ?', 'Post', @post.id).order('created_at desc')
    @new_comment = Comment.new

    @imagearray=[1,2,3,4]

    @postprograms = PostsWatanprogram.where('post_id =?', @post.id )

    programids = @postprograms.pluck(:watanprogram_id)
    @relatedposts = PostsWatanprogram.where(watanprogram_id: :programids).where.not(post_id: @post.id)
  end


  def set_institute_list
    return Institute.all
  end

  def set_watanprogram_list
    return Watanprogram.all
  end




  # GET /posts/new
  def new

    @institute_list = self.set_institute_list
    @watanprogram_list = self.set_watanprogram_list
    @post = Post.new
  end

  # GET /posts/1/edit
  def edit

  end

  # POST /posts
  # POST /posts.json
  def create

    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update



    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy

    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :body, :body2, :published, :start_date, :end_date, :post_type, :image, :is_event, :on_homepage,
                                   :event_date, :event_time, :event_location, :event_link, :image1, :image2, :image3, :imagewidth1, :imagewidth2, :imagewidth3,
                                   watanprogram_ids: [], institute_ids: [],
                                    )
    end
end
