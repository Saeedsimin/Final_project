class DoctorAddsController < ApplicationController
  before_action :set_doctor_add, only: [:show, :edit, :update, :destroy]

  # GET /doctor_adds
  # GET /doctor_adds.json
  def index
    @doctor_adds = DoctorAdd.all
  end

  # GET /doctor_adds/1
  # GET /doctor_adds/1.json
  def show
  end

  # GET /doctor_adds/new
  def new
    @doctor_add = DoctorAdd.new
  end

  # GET /doctor_adds/1/edit
  def edit
  end
def search
@doctor_add = DoctorAdd.new
end

def result
@param=doctor_add_params
if(@param[:docName]!='')
	@temp="docName='#{@param[:docName]}'"
end
if (@param[:docFamily]!='')
	@temp=@temp+"AND docName='#{@param[:docFamily]}'"
end

@doctor_adds=DoctorAdd.where(@temp)

#@doctor_adds=DoctorAdd.where("orders_count = #{params[:orders]}")
end
  
  def reserve
redirect_to user_reserves
	@test=params[:id]
	#@user_reserf = user_reserves
  end

  # POST /doctor_adds
  # POST /doctor_adds.json
  def create
    @doctor_add = DoctorAdd.new(doctor_add_params)

    respond_to do |format|
      if @doctor_add.save
        format.html { redirect_to @doctor_add, notice: 'Doctor add was successfully created.' }
        format.json { render :show, status: :created, location: @doctor_add }
      else
        format.html { render :new }
        format.json { render json: @doctor_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_adds/1
  # PATCH/PUT /doctor_adds/1.json
  def update
    respond_to do |format|
      if @doctor_add.update(doctor_add_params)
        format.html { redirect_to @doctor_add, notice: 'Doctor add was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor_add }
      else
        format.html { render :edit }
        format.json { render json: @doctor_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_adds/1
  # DELETE /doctor_adds/1.json
  def destroy
    @doctor_add.destroy
    respond_to do |format|
      format.html { redirect_to doctor_adds_url, notice: 'Doctor add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_add
      @doctor_add = DoctorAdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_add_params
      params.require(:doctor_add).permit(:from, :to, :total, :used, :docName, :docFamily, :speciality,:doctor_id)
    end
def user_reserf_params
      params.require(:user_reserf).permit(:date, :doctor_id, :reserve_id, :user_id, :turn)
    end
end
