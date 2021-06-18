class WallpapersController < ApplicationController
  before_action :set_wallpaper, only: %i[ show edit update destroy ]

  # GET /wallpapers or /wallpapers.json
  def index
    @wallpapers = Wallpaper.all
  end

  # GET /wallpapers/1 or /wallpapers/1.json
  def show
  end

  # GET /wallpapers/new
  def new
    @wallpaper = Wallpaper.new
  end

  # GET /wallpapers/1/edit
  def edit
  end

  # POST /wallpapers or /wallpapers.json
  def create
    @wallpaper = Wallpaper.new(wallpaper_params)

    respond_to do |format|
      if @wallpaper.save
        format.html { redirect_to @wallpaper, notice: "Wallpaper was successfully created." }
        format.json { render :show, status: :created, location: @wallpaper }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wallpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallpapers/1 or /wallpapers/1.json
  def update
    respond_to do |format|
      if @wallpaper.update(wallpaper_params)
        format.html { redirect_to @wallpaper, notice: "Wallpaper was successfully updated." }
        format.json { render :show, status: :ok, location: @wallpaper }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wallpaper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallpapers/1 or /wallpapers/1.json
  def destroy
    @wallpaper.destroy
    respond_to do |format|
      format.html { redirect_to wallpapers_url, notice: "Wallpaper was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def search
    if params[:search].blank?
      redirect_to(root_path, alert: "Empty field!") and return
    else
      @parameter = params[:search].downcase 
      @results = Wallpaper.all.where("lower(name) LIKE :search or lower(category) LIKE :search", search: "%#{@parameter}%")
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallpaper
      @wallpaper = Wallpaper.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wallpaper_params
      params.require(:wallpaper).permit(:name, :description, :category, :wallpaper)
    end
end
