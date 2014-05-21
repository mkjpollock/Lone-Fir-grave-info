class User < ActiveRecord::Base
	has_many :assignments
	has_many :roles, through: :assignments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def self.contributors
  	contributors = []
  	User.all.each do |user|
  		if !user.roles.first.nil? && user.roles.first.name == "Contributor"
  			contributors << user
  		end
  	end
  	return contributors
  end

  def self.admins
  	admins = []
  	User.all.each do |user|
  		if !user.roles.first.nil? && user.roles.first.name == "Admin"
  			admins << user
  		end
  	end
  	return admins
  end

  def self.visitors
  	visitors = []
  	User.all.each do |user|
  		if user.roles.first.nil?
  			visitors << user
  		end
  	end
  	return visitors
  end

end
