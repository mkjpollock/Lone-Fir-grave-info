class AssignmentsController < ApplicationController

	load_and_authorize_resource

	def create
		@user = User.find(params[:user_id])
		if @user.roles.first != nil
			@oldrole = @user.roles.first
			@user.roles.delete(@oldrole)
			@newrole = Role.find_by_name(params[:role])
			@assignment = Assignment.new(user_id: @user.id, role_id: @newrole.id)
			if @assignment.save
				flash[:notice] = "User Role Updated"
			end
				redirect_to users_path
		else
			@newrole = Role.find_by_name(params[:role])
			@assignment = Assignment.new(user_id: @user.id, role_id: @newrole.id)
			if @assignment.save
				flash[:notice] = "User Role Updated"
			end
				redirect_to users_path
		end
	end

	private

	def assignment_params
		params.permit(:user_id, :role_id)
	end

end