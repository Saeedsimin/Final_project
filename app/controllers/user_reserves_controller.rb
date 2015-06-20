class UserReservesController < ApplicationController
  before_action :set_user_reserf, only: [:show, :edit, :update, :destroy]

  # GET /user_reserves
  # GET /user_reserves.json
  def index
	@user_reserves = UserReserve.all
    
  end


  def index_temp
    @user_reserves = Doctor.select("*").joins('INNER JOIN user_reserves ON user_reserves.doctor_id = doctors.id ').where("user_reserves.user_id = ?",session[:current_user_id])
  end

  # GET /user_reserves/1
  # GET /user_reserves/1.json
  def show
  end

  # GET /user_reserves/new
  def new
    @user_reserf = UserReserve.new
  end

  # GET /user_reserves/1/edit
  def edit
  end

  # POST /user_reserves
  # POST /user_reserves.json
  def create
    @user_reserf = UserReserve.new(user_reserf_params)

    respond_to do |format|
      if @user_reserf.save
        format.html { redirect_to @user_reserf, notice: 'User reserve was successfully created.' }
        format.json { render :show, status: :created, location: @user_reserf }
      else
        format.html { render :new }
        format.json { render json: @user_reserf.errors, status: :unprocessable_entity }
      end
    end
  end

def test
#@temp=session[:current_user_id]
#@temp=Doctor.joins(:user_reserfs)
@temp=Doctor.select("*").joins('INNER JOIN user_reserves ON user_reserves.doctor_id = doctors.id').where("user_reserves.user_id = ?",2)
end

def create_reserve
	@doctor_add = DoctorAdd.find(params[:id])

@temp_turn=@doctor_add.used+1	
@second=((@doctor_add.to-@doctor_add.from)/@doctor_add.total)*@doctor_add.used

@date=@doctor_add.from + @second.seconds
	@user_reserf =  UserReserve.new(:doctor_id => @doctor_add.doctor_id,:reserve_id=>@doctor_add.id ,:date=>@date,:turn=>@temp_turn,:user_id=>session[:current_user_id])

@doctor_add.update(:used=>@temp_turn)

	respond_to do |format|
      if @user_reserf.save
        format.html { redirect_to @user_reserf, notice: 'User reserve was successfully created.' }
        format.json { render :show, status: :created, location: @user_reserf }
      else
        format.html { render :new }
        format.json { render json: @user_reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_reserves/1
  # PATCH/PUT /user_reserves/1.json
  def update
    respond_to do |format|
      if @user_reserf.update(user_reserf_params)
        format.html { redirect_to @user_reserf, notice: 'User reserve was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_reserf }
      else
        format.html { render :edit }
        format.json { render json: @user_reserf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_reserves/1
  # DELETE /user_reserves/1.json
  def destroy
    @user_reserf.destroy
    respond_to do |format|
      format.html { redirect_to user_reserves_url, notice: 'User reserve was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_reserf
      @user_reserf = UserReserve.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_reserf_params
      params.require(:user_reserve).permit(:date, :doctor_id, :reserve_id, :user_id, :turn)
    end
end
