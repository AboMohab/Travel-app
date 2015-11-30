class DestinationsController < ApplicationController
	def show 
		@destination=Destination.find(params[:id])
	end 

	private 
	def destinations_params
		params.require(:destination).permit(:name,:description)
	end

	public
	def edit 
		@destination =Destination.find(params[:id])

	end 

	def update 
		@destination =Destination.find(params[:id])
		if @destination.update_attributes(destinations_params)
			redirect_to(:action => 'show', :id => @destination.id)
		else 
			render 'edit'
		end
	end

end
