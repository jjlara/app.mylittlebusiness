class FotosprofilesController < ApplicationController
  before_action :set_fotosprofile, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /fotosprofiles
  # GET /fotosprofiles.json
  def myfotosprofiles
    @fotosprofiles = current_user.fotosprofiles
  end


  def index
    @fotosprofiles = Fotosprofile.all
  end

  def apiFotosperfil
    @fotosprofiles = Fotosprofile.all
  end

  # GET /fotosprofiles/1
  # GET /fotosprofiles/1.json
  def show
  end

  # GET /fotosprofiles/new
  def new
    @fotosprofile = Fotosprofile.new
  end

  # GET /fotosprofiles/1/edit
  def edit
  end

  # POST /fotosprofiles
  # POST /fotosprofiles.json
  def create
    @fotosprofile = Fotosprofile.new(fotosprofile_params)
    @fotosprofile.user_id = current_user.id #error salvado

    respond_to do |format|
      if @fotosprofile.save
        format.html { redirect_to @fotosprofile, notice: 'Fotosprofile was successfully created.' }
        format.json { render :show, status: :created, location: @fotosprofile }
      else
        format.html { render :new }
        format.json { render json: @fotosprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fotosprofiles/1
  # PATCH/PUT /fotosprofiles/1.json
  def update
    respond_to do |format|
      if @fotosprofile.update(fotosprofile_params)
        format.html { redirect_to @fotosprofile, notice: 'Fotosprofile was successfully updated.' }
        format.json { render :show, status: :ok, location: @fotosprofile }
      else
        format.html { render :edit }
        format.json { render json: @fotosprofile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fotosprofiles/1
  # DELETE /fotosprofiles/1.json
  def destroy
    @fotosprofile.destroy
    respond_to do |format|
      format.html { redirect_to fotosprofiles_url, notice: 'Fotosprofile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fotosprofile
      @fotosprofile = Fotosprofile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fotosprofile_params
      params.require(:fotosprofile).permit(:user_id, :mis_fotos)
    end
end
