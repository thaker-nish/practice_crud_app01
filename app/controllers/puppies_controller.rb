class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    puppy = Puppy.new(
      name: params['name'],
      gender: params['gender'],
      birthdate: params['birthdate'])
    puppy.save
    redirect_to '/puppies'
  end

  def show
    @puppy = Puppy.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def edit
    @puppy = Puppy.find_by(id: params[:id])
    render 'edit.html.erb'
  end
end
