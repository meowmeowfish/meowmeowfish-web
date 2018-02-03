class GmapsController < ApplicationController
  before_action :set_gmap, only: [:show, :edit, :update, :destroy]

  # GET /gmaps
  # GET /gmaps.json
  def index
     @gmaps = Gmap.all
     @hash = Gmaps4rails.build_markers(@gmaps) do |gmap, marker|
       marker.lat gmap.latitude
       marker.lng gmap.longitude
       marker.infowindow "<div style='font-size:16px;'>ID: #{gmap.index}<br/>Lat.: #{gmap.latitude}<br/>Lon.: #{gmap.longitude}</div>"
       # marker.myindex gmap.index
     end
  end

  # GET /gmaps/1
  # GET /gmaps/1.json
  def show
  end

  # GET /gmaps/new
  def new
    @gmap = Gmap.new
  end

  # GET /gmaps/1/edit
  def edit
  end

  # POST /gmaps
  # POST /gmaps.json
  def create
    @gmap = Gmap.new(gmap_params)

    respond_to do |format|
      if @gmap.save
        format.html { redirect_to @gmap, notice: 'Gmap was successfully created.' }
        format.json { render :show, status: :created, location: @gmap }
      else
        format.html { render :new }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /gmaps/api/create/:index/:lat/:lon
  def api_create
    @gmap = Gmap.new(:index => params[:index], :latitude => params[:lat], :longitude => params[:lon])
    
    respond_to do |format|
      if @gmap.save
        format.html { redirect_to @gmap, notice: 'Gmap was successfully created.' }
        format.json { render :show, status: :created, location: @gmap }
      else
        format.html { render :new }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end


  # GET /gmaps/api/update/:index/:lat/:lon
  def api_update
    @gmap = Gmap.where(:index => params[:index]).first
    @gmap.latitude = params[:lat]
    @gmap.longitude = params[:lon]

    respond_to do |format|
      if @gmap.save
        format.html { redirect_to @gmap, notice: 'Gmap was successfully updated.' }
        format.json { render :show, status: :created, location: @gmap }
      else
        format.html { render :new }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gmaps/1
  # PATCH/PUT /gmaps/1.json
  def update
    respond_to do |format|
      if @gmap.update(gmap_params)
        format.html { redirect_to @gmap, notice: 'Gmap was successfully updated.' }
        format.json { render :show, status: :ok, location: @gmap }
      else
        format.html { render :edit }
        format.json { render json: @gmap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gmaps/1
  # DELETE /gmaps/1.json
  def destroy
    @gmap.destroy
    respond_to do |format|
      format.html { redirect_to gmaps_url, notice: 'Gmap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gmap
      @gmap = Gmap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gmap_params
      params.require(:gmap).permit(:index, :latitude, :longitude, :address)
    end
end
