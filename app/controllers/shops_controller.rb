class ShopsController < ApplicationController
	def update
		@shop = Shop.find(params[:id])
    	if @shop.update_attributes(params[:shop])
      		flash[:notice] = "Settings updated."
      		redirect_to root_path
      	else
      		flash[:error] = "Something went wrong! Please try again."
      		redirect_to root_path
    	end
	end
end
