---
title       : Pe'ah Garden stats
subtitle    : Results for 2013
author      : Scott Gaul
job         : Pe'ah stats person
framework   : minimal      # 
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
ext_widgets : {rCharts: ["libraries/nvd3", "libraries/morris"]} 
mode        : selfcontained # {standalone, draft}
---

## 2013 overall results

2013 had the lowest yields for any year to date. We grew 608 pounds of vegetables or about 68,000 calories - roughly one month of food for an adult. This is less than 1/2 last year's total, although still a lot of food.






<div id = 'chart1' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart1()
    });
    function drawchart1(){  
      var opts = {
 "dom": "chart1",
"width":    500,
"height":    300,
"x": "Year",
"y": "Calories",
"type": "lineChart",
"id": "chart1" 
},
        data = [
 {
 "Year": 2002,
"Pounds": 1273.2,
"Calories": 1.144e+05 
},
{
 "Year": 2003,
"Pounds":  778.5,
"Calories":  86921 
},
{
 "Year": 2004,
"Pounds": 1302.2,
"Calories": 1.4018e+05 
},
{
 "Year": 2005,
"Pounds": 1392.5,
"Calories": 1.5155e+05 
},
{
 "Year": 2006,
"Pounds": 1321.2,
"Calories": 1.3438e+05 
},
{
 "Year": 2007,
"Pounds": 1686.2,
"Calories": 1.5306e+05 
},
{
 "Year": 2008,
"Pounds":    898,
"Calories":  90317 
},
{
 "Year": 2009,
"Pounds":   1028,
"Calories": 1.0039e+05 
},
{
 "Year": 2010,
"Pounds": 911.75,
"Calories":  84708 
},
{
 "Year": 2011,
"Pounds":   1269,
"Calories": 1.4731e+05 
},
{
 "Year": 2012,
"Pounds": 1901.2,
"Calories": 1.6451e+05 
},
{
 "Year": 2013,
"Pounds":    608,
"Calories":  67888 
} 
]
  
      var data = d3.nest()
        .key(function(d){
          return opts.group === undefined ? 'main' : d[opts.group]
        })
        .entries(data)
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        chart
  .forceY([      0, 1.7e+05 ])
  .margin({
 "left":     80 
})
          
        chart.xAxis
  .axisLabel("Year")

        
        
        chart.yAxis
  .tickFormat(function(d) {return d3.format(',.0f')(d)})
  .axisLabel("Calories")
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>


Here is the same result in pounds harvested. 


<div id = 'chart2' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart2()
    });
    function drawchart2(){  
      var opts = {
 "dom": "chart2",
"width":    500,
"height":    300,
"x": "Year",
"y": "Pounds",
"type": "lineChart",
"id": "chart2" 
},
        data = [
 {
 "Year": 2002,
"Pounds": 1273.2,
"Calories": 1.144e+05 
},
{
 "Year": 2003,
"Pounds":  778.5,
"Calories":  86921 
},
{
 "Year": 2004,
"Pounds": 1302.2,
"Calories": 1.4018e+05 
},
{
 "Year": 2005,
"Pounds": 1392.5,
"Calories": 1.5155e+05 
},
{
 "Year": 2006,
"Pounds": 1321.2,
"Calories": 1.3438e+05 
},
{
 "Year": 2007,
"Pounds": 1686.2,
"Calories": 1.5306e+05 
},
{
 "Year": 2008,
"Pounds":    898,
"Calories":  90317 
},
{
 "Year": 2009,
"Pounds":   1028,
"Calories": 1.0039e+05 
},
{
 "Year": 2010,
"Pounds": 911.75,
"Calories":  84708 
},
{
 "Year": 2011,
"Pounds":   1269,
"Calories": 1.4731e+05 
},
{
 "Year": 2012,
"Pounds": 1901.2,
"Calories": 1.6451e+05 
},
{
 "Year": 2013,
"Pounds":    608,
"Calories":  67888 
} 
]
  
      var data = d3.nest()
        .key(function(d){
          return opts.group === undefined ? 'main' : d[opts.group]
        })
        .entries(data)
      
      nv.addGraph(function() {
        var chart = nv.models[opts.type]()
          .x(function(d) { return d[opts.x] })
          .y(function(d) { return d[opts.y] })
          .width(opts.width)
          .height(opts.height)
         
        chart
  .forceY([      0,   1700 ])
  .margin({
 "left":     80 
})
          
        chart.xAxis
  .axisLabel("Year")

        
        
        chart.yAxis
  .tickFormat(function(d) {return d3.format(',.0f')(d)})
  .axisLabel("Pounds")
      
       d3.select("#" + opts.id)
        .append('svg')
        .datum(data)
        .transition().duration(500)
        .call(chart);

       nv.utils.windowResize(chart.update);
       return chart;
      });
    };
</script>



## 2013 individual results

Individual results for the year are listed in the table below. (Some gardeners harvested more than one crop for the pe'ah contribution, so each crop is shown in that case.)  

<!-- html table generated in R 3.0.1 by xtable 1.7-1 package -->
<!-- Mon Oct 21 21:41:21 2013 -->
<TABLE border=1>
<TR> <TH> Name </TH> <TH> Crop </TH> <TH> Pounds </TH> <TH> Calories </TH>  </TR>
  <TR> <TD> Alan and Charlene and Erika </TD> <TD> beans </TD> <TD align="right"> 53 </TD> <TD align="right"> 7494 </TD> </TR>
  <TR> <TD> Courtney and Michelle </TD> <TD> corn </TD> <TD align="right"> 29 </TD> <TD align="right"> 12903 </TD> </TR>
  <TR> <TD> Courtney and Michelle </TD> <TD> squash </TD> <TD align="right"> 1 </TD> <TD align="right"> 73 </TD> </TR>
  <TR> <TD> Courtney and Michelle </TD> <TD> tomatoes </TD> <TD align="right"> 2 </TD> <TD align="right"> 153 </TD> </TR>
  <TR> <TD> David J.  </TD> <TD> lettuce </TD> <TD align="right"> 15 </TD> <TD align="right"> 1022 </TD> </TR>
  <TR> <TD> Debbie and Holly and Keith </TD> <TD> squash </TD> <TD align="right"> 75 </TD> <TD align="right"> 5448 </TD> </TR>
  <TR> <TD> Gary M. and Co. </TD> <TD> tomatoes </TD> <TD align="right"> 6 </TD> <TD align="right"> 409 </TD> </TR>
  <TR> <TD> Gary S. And Phil </TD> <TD> eggplant </TD> <TD align="right"> 29 </TD> <TD align="right"> 3187 </TD> </TR>
  <TR> <TD> Jennifer and Robyn </TD> <TD> zucchini </TD> <TD align="right"> 80 </TD> <TD align="right"> 5793 </TD> </TR>
  <TR> <TD> Julie and David </TD> <TD> tomatoes </TD> <TD align="right"> 93 </TD> <TD align="right"> 6333 </TD> </TR>
  <TR> <TD> Karen and Ilana </TD> <TD> kale </TD> <TD align="right"> 14 </TD> <TD align="right"> 3121 </TD> </TR>
  <TR> <TD> Len and Avery and Josh </TD> <TD> cabbage </TD> <TD align="right"> 18 </TD> <TD align="right"> 2015 </TD> </TR>
  <TR> <TD> Len and Avery and Josh </TD> <TD> squash </TD> <TD align="right"> 3 </TD> <TD align="right"> 218 </TD> </TR>
  <TR> <TD> Len and Avery and Josh </TD> <TD> turnips </TD> <TD align="right"> 15 </TD> <TD align="right"> 1907 </TD> </TR>
  <TR> <TD> Leslie and Priscilla </TD> <TD> peppers </TD> <TD align="right"> 18 </TD> <TD align="right"> 1680 </TD> </TR>
  <TR> <TD> Masha and Dan and Avi </TD> <TD> basil </TD> <TD align="right"> 1 </TD> <TD align="right"> 104 </TD> </TR>
  <TR> <TD> Masha and Dan and Avi </TD> <TD> cucumbers </TD> <TD align="right"> 74 </TD> <TD align="right"> 5056 </TD> </TR>
  <TR> <TD> Masha and Dan and Avi </TD> <TD> tomatoes </TD> <TD align="right"> 6 </TD> <TD align="right"> 409 </TD> </TR>
  <TR> <TD> Melinda and Betsy </TD> <TD> broccoli </TD> <TD align="right"> 4 </TD> <TD align="right"> 617 </TD> </TR>
  <TR> <TD> Rabbi and Ana </TD> <TD> corn </TD> <TD align="right"> 2 </TD> <TD align="right"> 667 </TD> </TR>
  <TR> <TD> Sue and Scott and Madeline and Lilo </TD> <TD> collards </TD> <TD align="right"> 66 </TD> <TD align="right"> 9057 </TD> </TR>
  <TR> <TD> Sue and Scott and Madeline and Lilo </TD> <TD> lettuce </TD> <TD align="right"> 3 </TD> <TD align="right"> 221 </TD> </TR>
   </TABLE>


The full data for all years can be found [here](https://docs.google.com/spreadsheet/ccc?key=0AlYsW526rxsmdDhIVzM0VDYzRkdLOXlvcldfQkJtcnc&usp=sharing). 

Congratulations Courtney, Michelle, Julie and David! These two groups had the most successful plots for the last year. Courtney and Michelle harvested over 13,000 calories or roughly one week of food for someone in the New Haven community. 

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-21.png) ![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-22.png) 


A few crops did better than others for the year. 

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-31.png) ![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-32.png) 


## Comparison with prior years

Lower yields were basically across-the-board - it was a historically bad year for pretty much everything we planted. 

![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4.png) 


The charts below show the cumulative harvests (in pounds) by week for the past several years. These can help compare the current harvest at any point to prior years. Choose the crop you want and add / remove years if needed. 

<style>
iframe{
  height:600px;
  width:700px;
  margin:auto auto;
}
</style>
<iframe src=assets/fig/chart3.html seamless></iframe>





