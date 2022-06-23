class EvaluationsController < ApplicationController
  before_action :authenticate_user!
  helper_method :gain_point
  before_action :evaluatee_id, only: [:new, :create, :destroy]

  def new
    @user = User.find_by(id: @id)
    @evaluation = Evaluation.new
  end

  def create
    @user = User.find_by(id: @id)
    @evaluation = current_user.evaluations.new(evaluation_params)

    if @evaluation.save!
      gain_point
      redirect_to users_path, notice: "評価(#{@evaluation.evaluation_point}/10)をして1ポイント獲得しました。"
    else
      render :new
    end
  end

  private

  def evaluation_params
    params.require(:evaluation).permit(:user_id, :evaluatee_id, :evaluation_point)
  end

  def evaluatee_id
    @id = params[:evaluatee_id]
  end

  def gain_point
    @point = current_user.point
    @point += 1
    current_user.update!(point: @point)
  end
end
