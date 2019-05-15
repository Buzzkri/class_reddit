class SubsController < ApplicationController
  before_action :set_sub, only: [:show, :edit, :update, :destroy] #this will call this method before anything else
  # before_action :set_sub, except: [:index, :new, :create]
  
  def index
    @subs = Sub.all
    # render: index
  end

  def show
    
    # render :show
  end

  def new
    @sub = Sub.new
    render partial: "form"
  end

  def create
    @sub = Sub.new(sub_params)

    if @sub.save
      redirect_to sub_path(@sub) #you can also erase sub_path and leave just @sub. It will assume we're accesing
      # redirect_to sub_path(@sub.id)
      # redirect_to @sub
    else
      redirect_to sub_path(@sub)
    end

  end

  def edit
    # render :edit
    render partial: "form"
  end

  def update
    
    if @sub.update(sub_params)
      redirect_to sub_path(@sub.id)
    else
      render partial: "form"
    end
  end

  def destroy
    @sub.destroy
    redirect_to subs_path
  end

    private
    def sub_params
      # params = { sub: {name: "Sub Name" } } This is what the below line is doing
      params.require(:sub).permit(:name)
    end

    def set_sub
      @sub = Sub.find(params[:id])
    end

  end
