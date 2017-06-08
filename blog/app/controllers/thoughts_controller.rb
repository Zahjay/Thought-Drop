class ThoughtsController < ApplicationController

def new
end


def create
  @thought = Thought.new(thought_params)
 
  @thought.save
  redirect_to @thought
end
 
private
  def thought_params
    params.require(:thought).permit(:title, :text)
  end

end
