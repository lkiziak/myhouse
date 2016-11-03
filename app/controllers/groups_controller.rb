class GroupsController < ApplicationController

#Index - GET - lists all items of given model in database
#Show - GET - Provides details about single record
#New - GET - creates new records
#Create - POST - corresponds w/submit btn in new view template
#Edit - GET - modifies existing record
#Update - PATCH - corresponds w/submit btn in edit view template
#Destroy - DELETE - allows users to delete records from databases

#before_action :group, only: [:show, :edit, :update, :destroy]
before_action :authorize #except: [:index, :show]


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
      @group.user_id = current_user.id
      if @group.save
        redirect_to groups_path
      else
        render :new
      end
    end

  def edit
    @user = User.find(params[:id])
    if @user.edit_attributes(user_params)
      flash[:success] = "Event updated"
      redirect_to root_path
    else
      render 'edit'
    end
  end


  def update
    @group = Group.find(params[:id])
    if @group.update_attributes(group_params)
      redirect_to groups_path
    else
      render :edit
    end
  end

    def destroy
      @group = Group.find(params[:id])
      @group.destroy
      redirect_to groups_path
    end

end


private

  def set_group
    @group = Group.find(params[:id])
  end

def group_params
  params.require(:group).permit(:group_name, :website_url, :group_email)
end


