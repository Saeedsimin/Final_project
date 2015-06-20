class SessionsController < ApplicationController
def new

end


def create
user = User.find_by(username: params[:session][:username])
if user && user = User.where(:password => params[:session][:password]).first
session[:current_user_id] = user.id
log_in user
redirect_to user
else
flash.keep[:notice]="This message will persist"
render 'new'
end
end


def destroy
log_out
redirect_to root_path
end


end
