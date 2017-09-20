class FamilyMembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = current_user.family_members
  end

  def new
    @member = FamilyMember.new(user_id: current_user.id)
  end

  def create
    @member = current_user.family_members.new(member_params)
    if @member.save
      redirect_to @member
    else 
      redirect_to new_family_member_path
    end
  end

  def show
    
  end

  def edit
  end

  def update
    @member.update(member_params)
    if @member.save
      redirect_to @member
    else
      render :edit
    end
  end

  def destroy
    if @member.destroy
      redirect_to family_members_path
    else
      render @member 
    end
  end

  private

  def set_member
    @member = FamilyMember.find_by(id: params[:id])
  end

  def member_params
    params.require(:family_member).permit(:name, :age, :user_id)
  end
  
end



