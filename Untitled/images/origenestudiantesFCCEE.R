# Get this figure: fig <- get_figure("mcortinas", 20)
# Get this figure's data: data <- get_figure("mcortinas", 20)$data
# Add data to this figure: p <- add_trace(p, x=c(4, 5), y=c(4, 5), kwargs=list(filename="origenanavarra", fileopt="extend"))
# Get y data of first trace: y1 <- get_figure("mcortinas", 20)$data[[1]]$y

# Get figure documentation: https://plot.ly/r/get-requests/
# Add data documentation: https://plot.ly/r/file-options/

# You can reproduce this figure in R with the following code!

# Learn about API authentication here: https://plot.ly/r/getting-started
# Find your api_key here: https://plot.ly/settings/api

library(plotly)
trace1 <- list(
      x = c("85%", "86%", "86%", "86%", "85%", "85%"), 
      y = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      name = "UPNA", 
      orientation = "h", 
      showlegend = TRUE, 
      type = "bar", 
      uid = "5a21da", 
      xsrc = "mcortinas:19:7c11a0", 
      ysrc = "mcortinas:19:d8a0e1"
)
trace2 <- list(
      x = c("89%", "88%", "87%", "88%", "88%", "88%"), 
      y = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      name = "FCCEE", 
      orientation = "h", 
      showlegend = TRUE, 
      type = "bar", 
      uid = "dbc2ad", 
      xsrc = "mcortinas:19:e6c44b", 
      ysrc = "mcortinas:19:d8a0e1"
)
trace3 <- list(
      x = c("87.2", "89.9", "89.8", "91.3", "92.0", "91.8"), 
      y = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      name = "ADE", 
      orientation = "h", 
      showlegend = TRUE, 
      type = "bar", 
      uid = "78cbb9", 
      xsrc = "mcortinas:19:cf33a4", 
      ysrc = "mcortinas:19:d8a0e1"
)
trace4 <- list(
      x = c("83%", "79%", "77%", "80%", "80%", "81%"), 
      y = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      name = "ADE-Dcho", 
      orientation = "h", 
      showlegend = TRUE, 
      type = "bar", 
      uid = "132d1c", 
      xsrc = "mcortinas:19:6e9f12", 
      ysrc = "mcortinas:19:d8a0e1"
)
trace5 <- list(
      x = c("83.8", "74.1", "78.9", "69.8", "69.2", "68.1"), 
      y = c("2011-2012", "2012-2013", "2013-2014", "2014-2015", "2015-2016", "2016-2017 (A)"), 
      name = "ADE-ECO", 
      orientation = "h", 
      showlegend = TRUE, 
      type = "bar", 
      uid = "8f9bc7", 
      xsrc = "mcortinas:19:08c7ff", 
      ysrc = "mcortinas:19:d8a0e1"
)
data <- list(trace1, trace2, trace3, trace4, trace5)
layout <- list(
      bargap = 0.26, 
      bargroupgap = 0.2, 
      barmode = "group", 
      hovermode = "closest", 
      legend = list(orientation = "h"), 
      margin = list(
            r = 90, 
            t = 160, 
            b = 100, 
            l = 130, 
            pad = 9
      ), 
      showlegend = TRUE, 
      title = "Porcentaje de Estudiantes con Origen Navarra", 
      titlefont = list(family = "Roboto"), 
      xaxis = list(
            autorange = TRUE, 
            linewidth = 1, 
            range = c(0, 96.8421052632), 
            showline = TRUE, 
            side = "top", 
            tickfont = list(family = "Roboto"), 
            title = "Porcentaje", 
            titlefont = list(family = "Roboto"), 
            type = "linear"
      ), 
      yaxis = list(
            autorange = TRUE, 
            range = c(-0.5, 5.5), 
            title = "Año Académico", 
            titlefont = list(family = "Roboto"), 
            type = "category"
      )
)
p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, name=trace1$name, orientation=trace1$orientation, showlegend=trace1$showlegend, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, name=trace2$name, orientation=trace2$orientation, showlegend=trace2$showlegend, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, name=trace3$name, orientation=trace3$orientation, showlegend=trace3$showlegend, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, name=trace4$name, orientation=trace4$orientation, showlegend=trace4$showlegend, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, ysrc=trace4$ysrc)
p <- add_trace(p, x=trace5$x, y=trace5$y, name=trace5$name, orientation=trace5$orientation, showlegend=trace5$showlegend, type=trace5$type, uid=trace5$uid, xsrc=trace5$xsrc, ysrc=trace5$ysrc)
p <- layout(p, bargap=layout$bargap, bargroupgap=layout$bargroupgap, barmode=layout$barmode, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)


if ( !require(RSelenium) ) {
      install.packages("RSelenium", repos = "https://cloud.r-project.org/")
}

p %>%
      export(file = "origenestudiantes.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))
