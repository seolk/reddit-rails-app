class SubsController < ApplicationController
  # skinny controllers, fat models
  # controller be as slim as possible
    # D.R.Y and only worry about actions such as create/updating etc
    # CRUD, CREATE, READ, UPDATE, and DELETE

    # index   @ppl = Person.all
    # show    @person = Person.find(params[:id])
    # new     @person = Person.new
    # create  @person = Person.create(person_params)
    # edit    @person = Person.find(params[:id])
    # update  @person = Person.find(params[:id]).update(person_params)
    # delete  @person = Person.find(params[:id]).destroy

    # callbacks
      # before_action, called before entering a method
      # after_action, called after entering a method
      # skip_before_action, skip the before action
      # skip_after_action, skip the after action

      # before_action :method_to_call, only or except: [:index, :show]
      
  # model, all the logical code
    # ordering, printing
  
  before_action :set_sub, only: [:show, :update, :edit, :destroy]
  # before_action :set_sub, except: [:index, :new, :create]

  # can get in terminal (bundle exec rake notes)
  #TODO (anything that needs to be done)
  #FIXME (fix any bugs or errors)
  #OPTIMIZE (refactor meaning make better, less dry)

  #TODO fill out index view
  #FIXME page not loading
  #OPTIMIZE change the color of the text

  # get
  def index
    @subs = Sub.all
    # this will also render a webpage/views
    # in folder views/subs/index.html.erb

    # default render is html
    # can render json, xml, redirect
  end

  # get
  def show
    # default renders show views/subs/show.html.erb
  end

  # get
  def new
    # create a sub a memory
    @sub = Sub.new
    # renders the sub form
    render partial: "form"
  end

  # post
  def create
    @sub = Sub.create(sub_params)
    if @sub.save
      redirect_to root_path
    else 
      render :new
    end
  end

  # get
  def edit
    # render the edit form
    render partial: "form"
    # render 'subs/form'
  end

  # put
  def update
    if @sub.update(sub_params)
      redirect_to @sub
    else
      render :edit
    end

    # delete
    def destroy
      @sub.destroy
      redirect_to root_path
    end

    private
      def sub_params
        params.require(:sub).permit(:name)
      end

      def set_sub
        @sub = Sub.find(params[:id])
      end

end
