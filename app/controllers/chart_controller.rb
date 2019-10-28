class ChartController < ApplicationController
  def new
    @chart_data = Chart.new
  end

  def index
    #配列形式でグラフ用のデータを作成する場合
    #@data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
    @chart_data = Chart.all
  end
  
  def create
    @chart_data = current_user.charts.new(chart_params)
    #user_idとweightが入った新規chartモデルのインスタンスを作る
    
    if @chart_data.save
      redirect_to chart_index_path, success: "入力できました"
    else
      flash.now[:danger] = "もう一度入力してください"
      render :new
    end
  end
  
  private
  def chart_params
    params.require(:chart).permit(:weight, :date)
  end
end
