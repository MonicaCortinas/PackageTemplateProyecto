library(plotly)
trace1 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c("46%", "46%", "50%"), 
    marker = list(color = "rgb(250, 201, 87)"), 
    name = "Hombres", 
    orientation = "v", 
    type = "bar", 
    uid = "9a6663", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:e56223"
)
trace2 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c("54%", "54%", "50%"), 
    marker = list(color = "rgb(48, 147, 158)"), 
    name = "Mujeres", 
    orientation = "v", 
    type = "bar", 
    uid = "210d63", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:879c48"
)
trace3 <- list(
    x = c("Total U. Públicas", "Total U. Públicas Presenciales", "UPNA"), 
    y = c("95%", "95%", "97%"), 
    line = list(shape = "spline"), 
    marker = list(
        color = "rgb(226, 82, 61)", 
        size = 15, 
        symbol = "x"
    ), 
    mode = "markers", 
    name = "Origen España", 
    type = "scatter", 
    uid = "92ec1a", 
    xsrc = "mcortinas:21:f7b16f", 
    ysrc = "mcortinas:21:a0923c"
)
data <- list(trace1, trace2, trace3)
layout <- list(
    autosize = TRUE, 
    bargap = 0.63, 
    bargroupgap = 0.22, 
    font = list(family = "Raleway"), 
    hovermode = "closest", 
    legend = list(
        orientation = "h", 
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
        range = c(0, 104.358778177), 
        title = "Porcentaje", 
        type = "-"
    )
)
p <- plot_ly()
p <- add_trace(p, x=trace1$x, y=trace1$y, marker=trace1$marker, name=trace1$name, orientation=trace1$orientation, type=trace1$type, uid=trace1$uid, xsrc=trace1$xsrc, ysrc=trace1$ysrc)
p <- add_trace(p, x=trace2$x, y=trace2$y, marker=trace2$marker, name=trace2$name, orientation=trace2$orientation, type=trace2$type, uid=trace2$uid, xsrc=trace2$xsrc, ysrc=trace2$ysrc)
p <- add_trace(p, x=trace3$x, y=trace3$y, line=trace3$line, marker=trace3$marker, mode=trace3$mode, name=trace3$name, type=trace3$type, uid=trace3$uid, xsrc=trace3$xsrc, ysrc=trace3$ysrc)
p <- layout(p, autosize=layout$autosize, bargap=layout$bargap, bargroupgap=layout$bargroupgap, font=layout$font, hovermode=layout$hovermode, legend=layout$legend, margin=layout$margin, showlegend=layout$showlegend, title=layout$title, titlefont=layout$titlefont, xaxis=layout$xaxis, yaxis=layout$yaxis)

if ( !require(RSelenium) ) {
    install.packages("RSelenium", repos = "https://cloud.r-project.org/")
}

p %>%
    export(file = "estudiantes.svg",
           selenium = RSelenium::rsDriver(browser = "chrome"))


