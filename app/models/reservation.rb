class Reservation < ActiveRecord::Base
  belongs_to :user

  def create
    reservation = Reservation.new(reservation_params)
    reservation.save
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :breakfast, :breakfast_choice, :lunch, :lunch_choice, :dinner, :dinner_choice)
  end

end
