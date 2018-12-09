class BookmarksController < ApplicationController
  before_action :require_user, only: [:index, :departments]

  def create
    cpn = CompanyAddress.find(params[:company_address_id])
    @bookmark = Bookmark.create(:company_address => cpn, :user =>current_user)
    flash[:success] = "Address has been added to bookmarks"
  end

  def destroy
    @bookmark = Bookmark.find_by(company_address_id: params[:company_address_id], user_id: current_user.id)
    @bookmark.destroy
    flash[:success] = "Bookmark has been removed"
  end
end
