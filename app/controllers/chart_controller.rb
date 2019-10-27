class ChartController < ApplicationController
  def new
  end

  def index
    #配列形式でグラフ用のデータを作成
    @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
  end
end
