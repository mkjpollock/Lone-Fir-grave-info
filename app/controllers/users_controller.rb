class UsersController < ApplicationController

	load_and_authorize_resource

	def index
		@users = User.all
		@contributors = User.contributors
		@admins = User.admins
		@visitors = User.visitors
		@guests = User.guests
	end

	def show
		@user = User.find(params[:id])
		@roles = Role.all
		@assignment = Assignment.new
	end

end