class ThoughtsController < ApplicationController

def new
end

def create
  render plain: params[:thought].inspect
end

end
