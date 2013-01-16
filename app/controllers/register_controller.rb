#coding: utf-8
class RegisterController < ApplicationController
	def index
	end

	def record
		if params[:name] != ""
			if current_user.name != params[:name]
				name = params[:name]
				current_user.name = name
				current_user.save!

			end
		end


		if params[:email] != ""
			if current_user.email != params[:email]
				email = params[:email]
				current_user.email = email
				current_user.save!
			end
		end
		if params[:skype_id] != ""
			if current_user.skype_id != params[:skype_id]
				skype_id = params[:skype_id]
				current_user.skype_id = skype_id
				current_user.save!
			end
		end
		redirect_to choice_path, :notice => "編集しました"
	end
end
