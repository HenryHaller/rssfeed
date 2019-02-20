class ItemsController < ApplicationController
  def index
    @items = Item.last(10)
    respond_to do |format|
      format.html
      format.rss { render :layout => false }
    end
  end
end
