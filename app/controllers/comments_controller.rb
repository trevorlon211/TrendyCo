class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!
  
  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.new(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html {
          redirect_to @product, notice: 'Review was created successfully.'
        }
        format.json {
          render :show, status: :created, location: @product
        }
      else
        format.html { redirect_to @product, alert: 'Review was not saved successfully.'
        }
        format.json { render json: @comment.errors, status: :unprocessable_entity
        }
      end
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    product = @comment.product
    @comment.destroy
    redirect_to product
  end

  private
   def set_comment
      @comment = Comment.find(params[:id])
    end

   def comment_params
     params.require(:comment).permit(:product_id, :user_id, :body, :rating)
   end
end
