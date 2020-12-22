# ChartjsPhoenixDemo

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

# Chartjs Installation & Setup Details

## Install Chart.js with NPM

```
$ cd assets
$ npm install chart.js --save
```

## Create a js file with pie chart demo

In folder `/assets/js` create a file named `pie_chart_demo.js`. You can name this file anything you want. This file contains the code to generate the demo pie chart.


## Update Webpack.config.js

Add an entry so that the js file can be loaded only when needed by a specific template. If the js file is included in app.js it will be loaded for every page.

In the `assets/webpack.config.js` file add the following `entry`. Remember to add the `,` at the end of the first entry line.

```
entry: {
      'app': glob.sync('./vendor/**/*.js').concat(['./js/app.js']),
      'pie_chart_sample': glob.sync('./vendor/**/*.js').concat(['./js/pie_chart_sample.js'])
    },
```    
## Update controller to get and assign chart data

## Create a template to display the sample pie chart

Set the chart data variable in the template. Make sure to properly encode the data as shown below. Make sure the variable set in the template is the same as the variable in the chart's js.

```
<script type="text/javascript">
    window.chart_data = <%= raw(Jason.encode!(@chart_data)) %>
</script>
```


