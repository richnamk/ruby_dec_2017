class HellosController < ApplicationController
    def index
        render text: "What da frack am I to say?"
    end
    def hello
        render text: "Hello Nurse!"
    end
    def say
        unless params[:name]
            render text: "Say my name"
        else
            if params[:name]=="michael"
                redirect_to "/say/hello/joe"
            else 
                render text: "say hello #{params[:name]}"
            end
        end
    end
    def times
        session[:count] ||=0
        render text: "you visited this url #{session[:count] +=1} time(s)"
    end
    def restart
        session.clear
        render text:"destroy this session"
    end
end