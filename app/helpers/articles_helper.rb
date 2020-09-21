module ArticlesHelper
  def like_dislike_btn
    pre_vote = @article.votes.find { |vote| vote.user_id == current_user.id }
    if pre_vote
      button_to 'Unlike', article_vote_path(@article, pre_vote), method: :delete, class: 'btn btn-secondary'
    else
      button_to 'Like', article_votes_path(@article), method: :post, class: 'btn btn-secondary'
    end
  end

  def edit_btn(_user)
    link_to 'Edit', edit_article_path(@article) if current_user?(@article.author)
  end

  def destroy_btn(_user)
    return unless current_user?(@article.author)

    link_to 'Delete', @article, method: :delete,
                                data: { confirm: 'You sure?' }
  end
end
