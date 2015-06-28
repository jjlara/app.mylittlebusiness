class HorariosConfigsController < ApplicationController
  before_action :set_horarios_config, only: [:show, :edit, :update, :destroy]
  respond_to :json
  # GET /horarios_configs
  # GET /horarios_configs.json
 def myhorarios_configs
    @horarios_configs = current_user.horarios_configs
  end
  
  def index
    @horarios_configs = HorariosConfig.all
  end

  def apiHorarios
    @horarios_configs = HorariosConfig.all
  end

  # GET /horarios_configs/1
  # GET /horarios_configs/1.json
  def show
  end

  # GET /horarios_configs/new
  def new
    @horarios_config = HorariosConfig.new
  end

  # GET /horarios_configs/1/edit
  def edit
  end

  # POST /horarios_configs
  # POST /horarios_configs.json
  def create
    @horarios_config = HorariosConfig.new(horarios_config_params)
    @horarios_config.user_id = current_user.id #error salvado

    respond_to do |format|
      if @horarios_config.save
        format.html { redirect_to @horarios_config, notice: 'Horarios config was successfully created.' }
        format.json { render :show, status: :created, location: @horarios_config }
      else
        format.html { render :new }
        format.json { render json: @horarios_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /horarios_configs/1
  # PATCH/PUT /horarios_configs/1.json
  def update
    respond_to do |format|
      if @horarios_config.update(horarios_config_params)
        format.html { redirect_to myhorarios_configs_path, notice: 'Horarios config was successfully updated.' }
        format.json { render :show, status: :ok, location: @horarios_config }
      else
        format.html { render :edit }
        format.json { render json: @horarios_config.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /horarios_configs/1
  # DELETE /horarios_configs/1.json
  def destroy
    @horarios_config.destroy
    respond_to do |format|
      format.html { redirect_to horarios_configs_url, notice: 'Horarios config was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_horarios_config
      @horarios_config = HorariosConfig.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def horarios_config_params
      params.require(:horarios_config).permit(:l_0h, :l_1h, :l_2h, :l_3h, :l_4h, :l_5h, :l_6h, :l_7h, :l_730h, :l_8h, :l_830h, :l_9h, :lun_930h, :l_10h, :l_1030h, :l_11h, :l_1130, :l_12h, :l_1230h, :l_13h, :l_1330h, :l_14h, :l_1430h, :l_15h, :l_1530h, :l_16h, :l_1630h, :l_17h, :l_1730h, :l_18h, :l_1830h, :l_19h, :l_1930h, :l_20h, :l_2030h, :l_21h, :l_2130h, :l_22h, :l_2230h, :l_23h, :l_2330h, :ma_0h, :ma_1h, :ma_2h, :ma_3h, :ma_4h, :ma_5h, :ma_6h, :ma_7h, :ma_730h, :ma_8h, :ma_830h, :ma_9h, :ma_930h, :ma_10h, :ma_1030h, :ma_11h, :martes_1130h, :ma_12h, :ma_1230h, :ma_13h, :ma_1330h, :ma_14h, :ma_1430h, :ma_15h, :ma_1530h, :ma_16h, :ma_1630h, :ma_17h, :ma_1730h, :ma_18h, :ma_1830h, :ma_19h, :ma_1930h, :ma_20h, :ma_2030h, :ma_21h, :ma_2130h, :ma_22h, :ma_2230h, :ma_23h, :ma_2330h, :mi_0h, :mi_1h, :mi_2h, :mi_3h, :mi_4h, :mi_5h, :mi_6h, :mi_7h, :mi_730h, :mi_8h, :mi_830h, :mi_9h, :mi_930h, :miercoles_10h, :mi_1030h, :mi_11h, :mi_1130h, :mi_12h, :mi_1230h, :mi_13h, :mi_1330h, :mi_14h, :mi_1430h, :mi_15h, :mi_1530h, :mi_16h, :mi_1630h, :mi_17h, :mi_1730h, :mi_18h, :mi_1830h, :mi_19h, :mi_1930h, :mi_20h, :mi_2030h, :mi_21h, :mi_2130h, :mi_22h, :mi_2230h, :mi_23h, :mi_2330h, :j_0h, :j_1h, :j_2h, :j_3h, :j_4h, :j_5h, :j_6h, :j_7h, :j_730h, :j_8h, :j_830h, :j_9h, :j_930h, :j_10h, :j_1030h, :j_11h, :j_1130h, :j_12h, :j_1230h, :j_13h, :j_1330h, :j_14h, :j_1430h, :j_15h, :j_1530h, :j_16h, :j_1630h, :j_17h, :j_1730h, :j_18h, :j_1830h, :j_19h, :j_1930h, :j_20h, :j_2030h, :j_21h, :j_2130h, :j_22h, :j_2230h, :j_23h, :j_2330h, :v_0h, :v_1h, :v_2h, :v_3h, :v_4h, :v_5h, :v_6h, :v_7h, :v_730h, :v_8h, :v_830h, :v_9h, :v_930h, :v_10h, :v_1030h, :v_11h, :v_1130h, :v_12h, :v_1230h, :v_13h, :v_1330h, :v_14h, :v_1430h, :v_15h, :v_1530h, :v_16h, :v_1630h, :v_17h, :v_1730h, :v_18h, :v_1830h, :v_19h, :v_1930h, :v_20h, :v_2030h, :v_21h, :v_2130h, :v_22h, :v_2230h, :v_23h, :v_2330h, :s_0h, :s_1h, :s_2h, :s_3h, :s_4h, :s_5h, :s_6h, :s_7h, :s_730h, :s_8h, :s_830h, :s_9h, :s_930h, :s_10h, :s_1030h, :s_11h, :s_1130h, :s_12h, :s_1230h, :s_13h, :sabado_1330h, :s_14h, :s_1430h, :s_15h, :s_1530h, :s_16h, :s_1630h, :s_17h, :s_1730h, :s_18h, :s_1830h, :s_19h, :s_1930h, :s_20h, :s_2030h, :s_21h, :s_2130h, :s_22h, :s_2230h, :s_23h, :s_2330h, :d_0h, :d_1h, :d_2h, :d_3h, :d_4h, :d_5h, :d_6h, :d_7h, :d_730h, :d_8h, :d_830h, :d_9h, :d_930h, :d_10h, :d_1030h, :d_11h, :d_1130h, :d_12h, :d_1230h, :d_13h, :d_1330h, :d_14h, :d_1430h, :d_15h, :d_1530h, :d_16h, :d_1630h, :d_17h, :d_1730h, :d_18h, :d_1830h, :d_19h, :d_1930h, :d_20h, :d_2030h, :d_21h, :d_2130h, :d_22h, :d_2230h, :d_23h, :d_2330h, :user_id)
    end
end
