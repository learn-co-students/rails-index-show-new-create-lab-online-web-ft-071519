class CouponsController < ApplicationController

    def new
    end

    def create
      #binding.pry
      @new_coupon = Coupon.create(coupon_code: params["coupon"]["coupon_code"], store: params["coupon"]["store"])
      redirect_to coupon_path(@new_coupon)
    end

    def index
        @coupons = Coupon.all
    end
end
