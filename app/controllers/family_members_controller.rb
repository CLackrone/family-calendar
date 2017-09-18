class FamilyMembersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_member, only: [:show]

  def index
    @members = current_user.family_members
  end

  def new
    @member = FamilyMember.new(user_id: current_user.id)
  end

  def create
    @member = current_user.family_members.new(member_params)
    @member.save
    redirect_to family_member_path(@member)
  end

  def show
  end

  private

  def set_member
    @member = FamilyMember.find_by(id: params[:id])
  end

  def member_params
    params.require(:family_member).permit(:name, :age, :user_id)
  end
  
end
