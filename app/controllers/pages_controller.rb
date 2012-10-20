class PagesController < ApplicationController
  def home
    @titre = "Accueil"
    @micropost = Micropost.new if signed_in?
    @feed_items = current_user.feed.paginate(:page => params[:page], :per_page => 3) if signed_in?
  end

  def contact
    @titre = "Contact"
  end

  def about
    @titre = "A Propos"
  end
end
