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

def edit
  @thought = Thought.find(params[:id])
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

def update
  @thought = Thought.find(params[:id])
 
  if @thought.update(thought_params)
    redirect_to @thought
  else
    render 'edit'
  end
end


def destroy
  @thought = Thought.find(params[:id])
  @thought.destroy
 
  redirect_to thoughts_path
end

 
# private
#   def article_params
#     params.require(:article).permit(:title, :text)
#   end


private
  def thought_params
    params.require(:thought).permit(:title, :text)
  end


end
