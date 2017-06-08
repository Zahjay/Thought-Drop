class ThoughtsController < ApplicationController


def index
  @thoughts = Thought.all
end

def show
  @thought = Thought.find(params[:id])
end


def new
  @thought = Thought.new
end


def create
  @thought = Thought.new(thought_params)

  if @thought.save
    redirect_to @thought
  else
    render 'new'
  end
 
  # @thought.save
  # redirect_to @thought
end
 
  def show
    @thought = Thought.find(params[:id])
  end


private
  def thought_params
    params.require(:thought).permit(:title, :text)
  end


end
