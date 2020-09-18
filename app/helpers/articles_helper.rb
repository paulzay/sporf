module ArticlesHelper
  def like_dislike_btn
    pre_vote = @article.votes.find { |vote| vote.user_id == current_user.id }
    if pre_vote
      button_to 'Unlike', article_vote_path(@article, pre_vote), method: :delete, class: 'btn btn-secondary'
    else
      button_to 'Like', article_votes_path(@article), method: :post, class: 'btn btn-secondary'
    end
  end
end
