class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end


  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    if @article.persisted?
      redirect_to root_path, notice: 'Your article has been created'
    else
      flash_message = "Your article could not be saved"
      @article.errors.full_messages.each do |message|
        flash_message += " - #{message}"
      end
      flash[:error] = flash_message
      render :new
    end
  end


  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
