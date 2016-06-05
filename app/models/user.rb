class User < ActiveRecord::Base
  devise :database_authenticatable, :recoverable, :registerable,
         :trackable, :validatable, :confirmable
end
