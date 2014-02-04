class CachesController < ApplicationController
  #load_and_authorize_resource
  #skip_authorize_resource :only => [:new, :create, :index]
  before_action :set_cach, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /caches
  # GET /caches.json
  def index
    #@caches = Cach.all
    @caches = Cach.joins(:user_cach).where('user_caches.user_id'=>current_user)
  end

  # GET /caches/1
  # GET /caches/1.json
  def show
    @cache = Cach.find(params[:id])
    if !UserCach.find_by(user:current_user,cach:@cache)
      render :file => "public/401.html", :status => :unauthorized
    end
  end

  # GET /caches/new
  def new
    @cach = Cach.new
  end

  # GET /caches/1/edit
  def edit
  end

  # POST /caches
  # POST /caches.json
  def create
    @cach = Cach.new(cach_params)

    respond_to do |format|
      if @cach.save
        u_c = UserCach.new(user:current_user,cach:@cach)
        u_c.save
        format.html { redirect_to @cach, notice: 'Cach was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cach }
      else
        format.html { render action: 'new' }
        format.json { render json: @cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caches/1
  # PATCH/PUT /caches/1.json
  def update
    respond_to do |format|
      if @cach.update(cach_params)
        format.html { redirect_to @cach, notice: 'Cach was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caches/1
  # DELETE /caches/1.json
  def destroy
    @cach.destroy
    respond_to do |format|
      format.html { redirect_to caches_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cach
      @cach = Cach.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cach_params
      params.require(:cach).permit(:server_id, :location_id, :secured, :notes)
    end 

    def has_permission
        
    end
end
