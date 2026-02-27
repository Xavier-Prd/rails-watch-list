class ListsController < ApplicationController
  before_action :set_list, only: %i[ show ]
  def index
    @lists = List.all
  end

  def show
    @bookmarks = @list.bookmarks
    @bookmark = Bookmark.new
    @review = Review.new
    @reviews = Review.where(list_id: @list.id)
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to list_path(@list)
  end

  private

  def set_list
    @list = List.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
