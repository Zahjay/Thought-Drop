class ThoughtsController < ApplicationController

def new
  @thought = Thought.new
end


def create
  @thought = Thought.new(thought_params)
 
  @thought.save
  redirect_to @thought
end
 
  def show
    @thought = Thought.find(params[:id])
  end


private
  def thought_params
    params.require(:thought).permit(:title, :text)
  end


end
