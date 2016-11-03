class EventsController < ApplicationController


  #Index - GET - lists all items of given model in database
  #Show - GET - Provides details about single record
  #New - GET - creates new records
  #Create - POST - corresponds w/submit btn in new view template
  #Edit - GET - modifies existing record
  #Update - PATCH - corresponds w/submit btn in edit view template
  #Destroy - DELETE - allows users to delete records from databases

  #before_action :set_event only: [:show, :edit, :update, :destroy]
  before_action :authorize

  #GET - lists all items of given model in database
  def index
    @events = Event.all
  end

  #GET - Provides details about single record
  def show
    @event = Event.find(params[:id])
  end

  #GET - creates new records
  def new
    @event = Event.new
  end

  #POST - corresponds w/submit btn in new view template
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  #GET - modifies existing record
  def edit
    @event = Event.find(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  #PATCH - corresponds w/submit btn in edit view template
  def update
     @event = Event.find(params[:id])
     if @event.update_attributes(event_params)
      redirect_to events_path
    else
      render :edit
    end
  end

  #DELETE - allows users to delete records from databases
  def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path
    end
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :contact, :image)
  end






