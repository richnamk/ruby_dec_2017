class TimeDisplaysController < ApplicationController
    def main
        @time = Time.now.strftime("%H:%M:%S")
        @date = Time.now.strftime("%m:%d:%Y")
        return render 'time.html.erb'
    end
end
