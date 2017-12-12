class SessionsController < ApplicationController
    def new
    end

    def create
        user = User.find_by(email: params[:email])
        if user
            if user.try(:authenticate, 'password')
                session[:user_id] = user.id
                return redirect_to user_path user.id
            end
            flash[:errors] = ['Password is incorrect']
        else
            flash[:errors] = ['Email is incorrect']
        end
        return redirect_to :back
    end

    def destroy
        session.delete(:user_id) if session[user_id]
        return redirect_to new_session_path
    end
end
