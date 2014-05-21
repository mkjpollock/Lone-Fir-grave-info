class UsersController < ApplicationController

	def index
		@users = User.all
		@contributors = User.contributors
		@admins = User.admins
		@visitors = User.visitors
	end

	def show
		@user = User.find(params[:id])
	end

end