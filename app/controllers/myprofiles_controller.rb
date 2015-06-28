class MyprofilesController < ApplicationController
  before_action :set_myprofile, only: [:show, :edit, :update, :destroy]
  
  respond_to :json


  # GET /myprofiles
  # GET /myprofiles.json
  def index
    @myprofiles = current_user.myprofiles
  end

  def apiMiperfil
    @myprofiles = Myprofile.all
  end

  # GET /myprofiles/1
  # GET /myprofiles/1.json
  def show
  end

  # GET /myprofiles/new
  def new
    @myprofile = Myprofile.new
  end

  # GET /myprofiles/1/edit
  def edit
  end

  # POST /myprofiles
  # POST /myprofiles.json
  def create
    @myprofile = Myprofile.new(myprofile_params)
     @myprofile.user_id = current_user.id #error salvado

    respond_to do |format|
      if @myprofile.save
        format.html { redirect_to @myprofile, notice: 'Myprofile was successfully created.' }
        format.json { render :show, status: :created, location: @myprofile }
      else
        format.html { render :new }
        format.json { render json: @myprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /myprofiles/1
  # PATCH/PUT /myprofiles/1.json
  def update
    respond_to do |format|
      if @myprofile.update(myprofile_params)
        format.html { redirect_to @myprofile, notice: 'Myprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @myprofile }
      else
        format.html { render :edit }
        format.json { render json: @myprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /myprofiles/1
  # DELETE /myprofiles/1.json
  def destroy
    @myprofile.destroy
    respond_to do |format|
      format.html { redirect_to myprofiles_url, notice: 'Myprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_myprofile
      @myprofile = Myprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def myprofile_params
      params.require(:myprofile).permit(:descripcion, :informacion_util, :user_id, :fotoperfil, :description, :nombredenegocio, :tiponegocio, :telf, :address, :latitude, :longitude, :cif)
    end
end
