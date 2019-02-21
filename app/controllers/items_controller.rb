class ItemsController < ApplicationController
  def index
    @items = Item.last(10)
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end

  def create
    count = Item.count + 1
    @item = Item.create!(title: "this is item number #{count}")
    @items = Item.last(10)
    render :index
  end
end
