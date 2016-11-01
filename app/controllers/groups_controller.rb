class GroupsController < ApplicationController

#Index - GET - lists all items of given model in database
#Show - GET - Provides details about single record
#New - GET - creates new records
#Create - POST - corresponds w/submit btn in new view template
#Edit - GET - modifies existing record
#Update - PATCH - corresponds w/submit btn in edit view template
#Destroy - DELETE - allows users to delete records from databases

  before_action :set_group, only: [:show, :edit, :update, :destroy]
  before_action :authorize, except: [:index, :show]



  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:id])
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to :group
    else
      render :new
    end
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])

    if @group.update_attributes(group_params)
      redirect_to :groups
    else
      render :edit
    end
  end

  def destroy
    @group = Group.find(params[:id])
    @group.destroy
    #redirect_to groups_path
    redirect_to root_path
  end
end



private
def group_params
  params.require(:group).permit(:group_name, :website_url, :group_email)
end






