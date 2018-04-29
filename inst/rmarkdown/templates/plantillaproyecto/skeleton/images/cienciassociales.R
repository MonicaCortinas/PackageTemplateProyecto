
library(plotly)
trace1 <- list(
      direction = "clockwise", 
      domain = list(x = c(0, 0.3)), 
      hole = 0.4, 
      hoverinfo = "label+value+percent+name", 
      labels = c("Ciencias Sociales y Jurídicas", "Otros ámbitos"), 
      labelssrc = "mcortinas:23:139170", 
      marker = list(colors = c("rgb(54, 50, 153)", "rgb(17, 123, 215)", "rgb(37, 180, 167)", "rgb(134, 191, 118)", "rgb(249, 210, 41)", "rgb(244, 236, 21)")), 
      name = "Total nacional", 
      opacity = 1, 
      sort = TRUE, 
      textfont = list(
            color = "rgb(255, 255, 255)", 
            family = "Raleway"
      ), 
      textinfo = "value+percent", 
      textposition = "inside", 
      type = "pie", 
      uid = "5e1b95", 
      values = c("604243", "703218"), 
      valuessrc = "mcortinas:23:47d9c2"
)
trace2 <- list(
      direction = "clockwise", 
      domain = list(x = c(0.31, 0.6)), 
      hole = 0.4, 
      hoverinfo = "label+value+percent+name", 
      labels = c("Ciencias Sociales y Jurídicas", "Otros ámbitos"), 
      labelssrc = "mcortinas:23:139170", 
      marker = list(colors = c("rgb(54, 50, 153)", "rgb(17, 123, 215)", "rgb(37, 180, 167)", "rgb(134, 191, 118)", "rgb(249, 210, 41)", "rgb(244, 236, 21)")), 
      name = "Total Navarra", 
      opacity = 1, 
      sort = TRUE, 
      textfont = list(
            color = "rgb(255, 255, 255)", 
            family = "Raleway"
      ), 
      textinfo = "value+percent", 
      textposition = "inside", 
      type = "pie", 
      uid = "637a03", 
      values = c("6743", "4192"), 
      valuessrc = "mcortinas:23:6d5c8f"
)


trace3 <- list(
      domain = list(x = c(0.61, 1)), 
      hole = 0.4, 
      hoverinfo = "label+value+percent+name", 
      labels = c("Ciencias Sociales y Jurídicas", "Otros ámbitos"), 
      labelssrc = "mcortinas:23:139170", 
      marker = list(colors = c("rgb(54, 50, 153)", "rgb(17, 123, 215)", "rgb(37, 180, 167)", "rgb(134, 191, 118)", "rgb(249, 210, 41)", "rgb(244, 236, 21)")), 
      name = "UPNA", 
      opacity = 1, 
      sort = TRUE, 
      textfont = list(
            color = "rgb(255, 255, 255)", 
            family = "Raleway"
      ), 
      textinfo = "value+percent", 
      textposition = "inside", 
      type = "pie", 
      uid = "5e1b95", 
      values = c("3820", "3230"), 
      valuessrc = "mcortinas:23:47d9c2"
)

data <- list(trace1, trace2, trace3)
layout <- list(
      annotations = list(
            list(
                  x = 0.1, 
                  y = 0.5, 
                  font = list(size =11), 
                  showarrow = FALSE, 
                  text = "Total Nacional"
            ), 
            list(
                  x = 0.45, 
                  y = 0.5, 
                  font = list(size = 11), 
                  showarrow = FALSE, 
                  text = "Navarra"
            ),
            list(
                  x = 0.8, 
                  y = 0.5, 
                  font = list(size = 11), 
                  showarrow = FALSE, 
                  text = "UPNA"
            )
      ), 
      legend = list(
            font = list(family = "Raleway"), 
            orientation = "h"
      ), 
      title = "Importancia Ciencias Sociales y Jurídicas", 
      titlefont = list(family = "Raleway")
)
p <- plot_ly()
p <- add_trace(p, direction=trace1$direction, domain=trace1$domain, hole=trace1$hole, hoverinfo=trace1$hoverinfo, labels=trace1$labels, labelssrc=trace1$labelssrc, marker=trace1$marker, name=trace1$name, opacity=trace1$opacity, textfont=trace1$textfont, textinfo=trace1$textinfo, type=trace1$type, uid=trace1$uid, values=trace1$values, valuessrc=trace1$valuessrc)
p <- add_trace(p, direction=trace2$direction, domain=trace2$domain, hole=trace2$hole, hoverinfo=trace2$hoverinfo, labels=trace2$labels, labelssrc=trace2$labelssrc, marker=trace2$marker,name=trace2$name, opacity=trace2$opacity, text=trace2$text, textfont=trace2$textfont, textinfo=trace2$textinfo, textposition=trace2$textposition, type=trace2$type, uid=trace2$uid, values=trace2$values, valuessrc=trace2$valuessrc)
p <- add_trace(p, direction=trace3$direction, domain=trace3$domain, hole=trace3$hole, hoverinfo=trace3$hoverinfo, labels=trace3$labels, labelssrc=trace3$labelssrc, marker=trace2$marker,name=trace3$name, opacity=trace3$opacity, sort=trace3$sort, text=trace3$text, textfont=trace3$textfont, textposition=trace3$textposition, type=trace3$type, uid=trace3$uid, values=trace3$values, valuessrc=trace3$valuessrc)

p <- layout(p, annotations=layout$annotations, legend=layout$legend, title=layout$title, titlefont=layout$titlefont)

p %>%
      export(file = "sociales.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))

