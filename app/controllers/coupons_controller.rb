class CouponsController < ApplicationController
def create
  @coupon = Coupon.new
  @coupon.title = params[:couon_code]
  @coupon.description = params[:store]
  @coupon.save
  
end
end