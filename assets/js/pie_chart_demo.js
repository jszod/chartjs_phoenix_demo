// Load chartjs

import Chart from "chart.js";

// Get the canvas from the DOM
var ctx = document.getElementById("pieChart").getContext("2d")

var MyChart = new Chart(ctx, {
    type: 'pie',
    data: {
        labels: [],
        datasets: [{
            // data: [
            // 70,
            // 30
            // ],
            // This variable will contain the data for the chart at runtime
            data: chart_data,
            backgroundColor: [
                'rgba(123, 239, 78, 1)',
                'rgba(241, 130, 141, 1)'
            ]
        }],
        labels: [
            'To Do',
            'Not To Do'
        ]
    },
    options: {
        responsive: true
    }
});