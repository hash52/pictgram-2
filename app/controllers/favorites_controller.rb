class FavoritesController < ApplicationController
  def create
    favorite = Favorite.new
    favorite.user_id=current_user.id
    favorite.topic_id=params[:topic_id]
    if favorite.save
      redirect_to topics_path,notice:'お気に入りに登録されました'
    else
      redirect_to topics_path,notice:'お気に入り登録に失敗しました'
    end
  end

  def index
    @favorite_topics = current_user.favorite_topics
  end
end
