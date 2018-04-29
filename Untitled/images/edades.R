library(plotly)
trace1 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c(" 0,70   ", " 0,82   ", " 0,90   "), 
    marker = list(color = "rgb(48,147,158)"), 
    name = "De 18 a 21 años", 
    orientation = "v", 
    type = "bar", 
    uid = "9a6663", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:e56223"
)
trace2 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c(" 0,11   ", " 0,10   ", " 0,08   "), 
    marker = list(color = "rgb(54,85,107)"), 
    name = "De 22 a 25 años", 
    orientation = "v", 
    type = "bar", 
    uid = "210d63", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:879c48"
)
trace3 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c(" 0,06   ", " 0,03   ", " 0,02   "), 
    marker = list(color = "rgb(197,197,197)"), 
    name = "De 26 a 30 años", 
    type = "bar", 
    uid = "92ec1a", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:a0923c"
)
trace4 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c(" 0,13   ", " 0,05   ", "0,03"), 
    marker = list(color = "rgb(226,82,61)"), 
    name = "Más de 30 años", 
    type = "bar", 
    uid = "4ae790", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:8cdc58"
)
data <- list(trace1, trace2, trace3, trace4)
layout <- list(
    autosize = TRUE, 
    bargap = 0.63, 
    bargroupgap = 0.22, 
    font = list(family = "Raleway"), 
    hovermode = "closest", 
    legend = list(
        orientation = "v", 
        traceorder = "reversed"
    ), 
    margin = list(
        r = 120, 
        t = 120, 
        b = 120, 
        l = 110, 
        pad = 10
    ), 
    showlegend = TRUE, 
    title = "Estadística Estudiantes de Nuevo Ingreso", 
    titlefont = list(family = "Raleway"), 
    xaxis = list(
        autorange = TRUE, 
        range = c(-0.5, 2.5), 
        title = "<br>", 
        type = "category"
    ), 
    yaxis = list(
        autorange = TRUE, 
        range = c(0, 94.7368421053), 
        title = "Porcentaje", 
        type = "-"
    )
)
p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, marker=trace1$marker, name=trace1$name, orientation=trace1$orientation, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, marker=trace2$marker, name=trace2$name, orientation=trace2$orientation, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, marker=trace3$marker, name=trace3$name, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- add_trace(p, x=trace4$x, y=trace4$y, marker=trace4$marker, name=trace4$name, type=trace4$type, uid=trace4$uid, xsrc=trace4$xsrc, ysrc=trace4$ysrc)
p <- layout(p, autosize=layout$autosize, bargap=layout$bargap, bargroupgap=layout$bargroupgap, font=layout$font, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)

p %>%
      export(file = "edades.svg",
             selenium = RSelenium::rsDriver(browser = "chrome"))

