class DoctorUserReserve < ActiveRecord::Base
  has_one :doctor
  has_many :user_reserves
end
