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

2013 had the lowest yields so far. We grew 608 pounds of vegetables or about 68,000 calories - roughly one month of food for an adult. This is less than 1/2 last year's total.






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


And again in pounds


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

Individual results for the year are listed in the table below; some gardeners harvested more than one crop for the pe'ah contribution. 


<!-- html table generated in R 3.0.2 by xtable 1.7-1 package -->
<!-- Wed Oct  2 21:49:54 2013 -->
<TABLE border=1>
<TR> <TH>  </TH> <TH> Name </TH> <TH> Crop </TH> <TH> Pounds </TH> <TH> Calories </TH>  </TR>
  <TR> <TD align="right"> 1 </TD> <TD> Alan and Charlene and Erika </TD> <TD> beans </TD> <TD align="right"> 53 </TD> <TD align="right"> 7494 </TD> </TR>
  <TR> <TD align="right"> 2 </TD> <TD> Courtney and Michelle </TD> <TD> corn </TD> <TD align="right"> 29 </TD> <TD align="right"> 12903 </TD> </TR>
  <TR> <TD align="right"> 3 </TD> <TD> Courtney and Michelle </TD> <TD> squash </TD> <TD align="right"> 1 </TD> <TD align="right"> 73 </TD> </TR>
  <TR> <TD align="right"> 4 </TD> <TD> Courtney and Michelle </TD> <TD> tomatoes </TD> <TD align="right"> 2 </TD> <TD align="right"> 153 </TD> </TR>
  <TR> <TD align="right"> 5 </TD> <TD> David Jones </TD> <TD> lettuce </TD> <TD align="right"> 15 </TD> <TD align="right"> 1022 </TD> </TR>
  <TR> <TD align="right"> 6 </TD> <TD> Debbie and Holly and Keith </TD> <TD> squash </TD> <TD align="right"> 75 </TD> <TD align="right"> 5448 </TD> </TR>
  <TR> <TD align="right"> 7 </TD> <TD> Gary Mitchell and Co. </TD> <TD> tomatoes </TD> <TD align="right"> 6 </TD> <TD align="right"> 409 </TD> </TR>
  <TR> <TD align="right"> 8 </TD> <TD> Gary S. And Phil </TD> <TD> eggplant </TD> <TD align="right"> 29 </TD> <TD align="right"> 3187 </TD> </TR>
  <TR> <TD align="right"> 9 </TD> <TD> Jennifer and Robyn </TD> <TD> zucchini </TD> <TD align="right"> 80 </TD> <TD align="right"> 5793 </TD> </TR>
  <TR> <TD align="right"> 10 </TD> <TD> Julie and David Chevan </TD> <TD> tomatoes </TD> <TD align="right"> 93 </TD> <TD align="right"> 6333 </TD> </TR>
  <TR> <TD align="right"> 11 </TD> <TD> Karen and Ilana </TD> <TD> kale </TD> <TD align="right"> 14 </TD> <TD align="right"> 3121 </TD> </TR>
  <TR> <TD align="right"> 12 </TD> <TD> Len and Avery Grauer and Josh </TD> <TD> cabbage </TD> <TD align="right"> 18 </TD> <TD align="right"> 2015 </TD> </TR>
  <TR> <TD align="right"> 13 </TD> <TD> Len and Avery Grauer and Josh </TD> <TD> squash </TD> <TD align="right"> 3 </TD> <TD align="right"> 218 </TD> </TR>
  <TR> <TD align="right"> 14 </TD> <TD> Len and Avery Grauer and Josh </TD> <TD> turnips </TD> <TD align="right"> 15 </TD> <TD align="right"> 1907 </TD> </TR>
  <TR> <TD align="right"> 15 </TD> <TD> Leslie and Priscilla </TD> <TD> peppers </TD> <TD align="right"> 18 </TD> <TD align="right"> 1680 </TD> </TR>
  <TR> <TD align="right"> 16 </TD> <TD> Mash and Dan and Avi </TD> <TD> basil </TD> <TD align="right"> 1 </TD> <TD align="right"> 104 </TD> </TR>
  <TR> <TD align="right"> 17 </TD> <TD> Mash and Dan and Avi </TD> <TD> cucumbers </TD> <TD align="right"> 74 </TD> <TD align="right"> 5056 </TD> </TR>
  <TR> <TD align="right"> 18 </TD> <TD> Mash and Dan and Avi </TD> <TD> tomatoes </TD> <TD align="right"> 6 </TD> <TD align="right"> 409 </TD> </TR>
  <TR> <TD align="right"> 19 </TD> <TD> Melinda and Betsy </TD> <TD> broccoli </TD> <TD align="right"> 4 </TD> <TD align="right"> 617 </TD> </TR>
  <TR> <TD align="right"> 20 </TD> <TD> Rabbi and Ana </TD> <TD> corn </TD> <TD align="right"> 2 </TD> <TD align="right"> 667 </TD> </TR>
  <TR> <TD align="right"> 21 </TD> <TD> Sue and Scott and Madeline and Lilo </TD> <TD> collards </TD> <TD align="right"> 66 </TD> <TD align="right"> 9057 </TD> </TR>
  <TR> <TD align="right"> 22 </TD> <TD> Sue and Scott and Madeline and Lilo </TD> <TD> lettuce </TD> <TD align="right"> 3 </TD> <TD align="right"> 221 </TD> </TR>
   </TABLE>


Congratulations Courtney and Michelle and Julie and David! They had the most successful plots for the last year. Courtney and Michelle harvested over 13,000 calories or roughly one week of food for someone in the New Haven community. 

![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-21.png) ![plot of chunk unnamed-chunk-2](assets/fig/unnamed-chunk-22.png) 


A few crops did better than others. 

![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-31.png) ![plot of chunk unnamed-chunk-3](assets/fig/unnamed-chunk-32.png) 



## Comparison with prior years

The lower yields were basically across-the-board - it was a bad year for pretty much everything we planted. 

![plot of chunk unnamed-chunk-4](assets/fig/unnamed-chunk-4.png) 


Can look at cumulative harvests by week. Here are tomato harvests for the past few years. 


<div id = 'chart3' class = 'rChart nvd3'></div>
<script type='text/javascript'>
 $(document).ready(function(){
      drawchart3()
    });
    function drawchart3(){  
      var opts = {
 "dom": "chart3",
"width":    500,
"height":    300,
"x": "Week",
"y": "value",
"group": "Year",
"type": "lineChart",
"id": "chart3" 
},
        data = [
 {
 "Crop": "tomatoes",
"Week": 29,
"value":      0,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 30,
"value":      0,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 31,
"value":      0,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 32,
"value":      2,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 33,
"value":   55.5,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 34,
"value":  67.75,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 35,
"value":     72,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 36,
"value":  76.25,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 37,
"value":  76.25,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 38,
"value":  76.25,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 39,
"value":  76.25,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 40,
"value":  76.25,
"Year": 2009 
},
{
 "Crop": "tomatoes",
"Week": 29,
"value":      0,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 30,
"value":      0,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 31,
"value":   0.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 32,
"value":  11.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 33,
"value":  28.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 34,
"value":  88.75,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 35,
"value": 139.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 36,
"value":  169.5,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 37,
"value":  180.5,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 38,
"value": 188.75,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 39,
"value": 192.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 40,
"value": 192.25,
"Year": 2010 
},
{
 "Crop": "tomatoes",
"Week": 29,
"value":     15,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 30,
"value":     15,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 31,
"value":     15,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 32,
"value":  34.75,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 33,
"value": 107.25,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 34,
"value":  152.5,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 35,
"value":  171.5,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 36,
"value": 264.25,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 37,
"value": 328.25,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 38,
"value": 342.75,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 39,
"value": 342.75,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 40,
"value": 342.75,
"Year": 2011 
},
{
 "Crop": "tomatoes",
"Week": 29,
"value":      0,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 30,
"value":      9,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 31,
"value":     27,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 32,
"value":    119,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 33,
"value":  323.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 34,
"value":  535.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 35,
"value":    594,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 36,
"value":  623.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 37,
"value":  623.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 38,
"value":  623.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 39,
"value":  623.5,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 40,
"value":    628,
"Year": 2012 
},
{
 "Crop": "tomatoes",
"Week": 29,
"value":      0,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 30,
"value":      0,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 31,
"value":      1,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 32,
"value":     47,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 33,
"value":   70.5,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 34,
"value": 102.75,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 35,
"value": 105.75,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 36,
"value": 105.75,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 37,
"value": 107.25,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 38,
"value": 107.25,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 39,
"value": 107.25,
"Year": 2013 
},
{
 "Crop": "tomatoes",
"Week": 40,
"value": 107.25,
"Year": 2013 
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





