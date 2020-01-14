class RestorentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_restorent, only: [:show, :edit, :update, :destroy]

  # GET /restorents
  # GET /restorents.json
  def index
    @q = Restorent.ransack(params[:q])
       @students = @q.location
  
    @restorents = Restorent.all

  end

  # GET /restorents/1
  # GET /restorents/1.json
  def show
  end
  def search  
    if params[:search].blank?  
      redirect_to(root_path, alert: "Empty field!") and return  
    else  
      @parameter = params[:search].downcase  
      @restorents = Restorent.all.where("lower(location) LIKE :search", search: @parameter)  
    end  
  end
  # GET /restorents/new
  def new
    @restorent = Restorent.new
    4.times {@restorent.breakfasts.build}
    4.times {@restorent.lunches.build}
  end

  # GET /restorents/1/edit
  def edit
    1.times {@restorent.breakfasts.build}
    1.times {@restorent.lunches.build}
  end

  # POST /restorents
  # POST /restorents.json
  def create
    @restorent = Restorent.new(restorent_params)

    respond_to do |format|
      if @restorent.save
        format.html { redirect_to @restorent, notice: 'Restorent was successfully created.' }
        format.json { render :show, status: :created, location: @restorent }
      else
        format.html { render :new }
        format.json { render json: @restorent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restorents/1
  # PATCH/PUT /restorents/1.json
  def update
    respond_to do |format|
      if @restorent.update(restorent_params)
        format.html { redirect_to @restorent, notice: 'Restorent was successfully updated.' }
        format.json { render :show, status: :ok, location: @restorent }
      else
        format.html { render :edit }
        format.json { render json: @restorent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restorents/1
  # DELETE /restorents/1.json
  def destroy
    @restorent.destroy
    respond_to do |format|
      format.html { redirect_to restorents_url, notice: 'Restorent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restorent
      @restorent = Restorent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restorent_params
      params.require(:restorent).permit(:name, :image, :website, :location, :onlineDelivery, :table_Booking, :cuisine, :currency, :price, :user_id, :search,:user_id, breakfasts_attributes: [:id, :name, :price], lunches_attributes: [:id, :name, :price])
    end
end
