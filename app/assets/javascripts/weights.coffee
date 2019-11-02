# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


window.draw_graph = -> 
    ctx = document.getElementById("myChart").getContext('2d')
    barNum = gon.measure_date
    labels = new Array(barNum)
    for i in [0...barNum]
        labels[i] = 'data' + i
    
    # # Chart設定
    # myChart = new Chart(ctx, {
    #     # 描画するグラフの種類
    #     type: 'line',
    #     # ラベルとデータセット
    #     data: {
    #         labels: '体重(kg)',
    #         datasets: [{
    #             yAxisID: 'y-axis-1',
    #             data: gon.weight,
    #             borderColor : "rgba(254,97,132,0.8)",
    #             pointBackgroundColor : "rgba(254,97,132,0.8)",
    #             fill: false,}
    #         }],
    #     },
    #     # オプション設定
    #     options: {
    #         maintainAspectRatio: false,
    #         scales: {
    #             yAxes: [{
    #                 id: "y-axis-1",
    #                 type: "linear",
    #                 position: "left",
    #                 ticks: {
    #                     suggestedMax: 120,
    #                     suggestedMin: 30,
    #                     stepSize: 20
    #                 }
    #             }]
    #         }
    #     }
    # })

    myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: [1,2,3],
            datasets: [{
                label: 'ここにデータのラベルを書く',
                #gonを使ってコントローラからデータをもらう
                data: gon.data,
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero:true
                    }
                }]
            }
        }
    })