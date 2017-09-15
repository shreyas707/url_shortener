class UrlsController < ApplicationController

	def add_url
		@url = Url.new
	end

	def create_url
		@url = Url.new(url_params)
		@url.shortened_url = request.domain + ":3000/" + SecureRandom.hex(4)
		if @url.save
			redirect_to display_url_path(@url)
		end
	end

	def display_url
		@url = Url.find(params[:id])
	end

	def redirect_url
		url = Url.find_by(shortened_url: ("localhost:3000/" + params[:id])).url
		redirect_to url
	end

	private

	def url_params
		params.require(:url).permit(:url, :shortened_url, :user_id)
	end

end
