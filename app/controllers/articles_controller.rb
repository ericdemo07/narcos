class ArticlesController < ApplicationController
  http_basic_authenticate_with name: "username", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    puts "hello"
    @article = Article.find(params[:id])
  end

  def create
    @user = User.find(params[:user_id])
    @article = @user.articles.create(article_params)
    redirect_to user_path(@user)
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
  def article_params
    params.require(:article).permit(:first_name, :last_name, :city, :state, :postal_code, :address_line_1, :address_line_2, :donation_amount, :content, :img, :mail_id, :phone, :likes_count, :share_count, :dob)
  end
end
