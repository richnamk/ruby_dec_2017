class DojosController < ApplicationController
    def index
        @dojo = Dojo.all
        render 'index'
    end
    # def count
        
    # end
end
