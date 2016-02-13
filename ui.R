library(shiny)
shinyUI(pageWithSidebar(
    headerPanel("2-class random variable simulation"),
    sidebarPanel( width=4,
        h3("class A"),
        sliderInput('ax0', 'Mean x for class A', value = 1, min=-2, max=2, step=0.05),
        sliderInput('ay0', 'Mean y for class A', value = 1, min=-2, max=2, step=0.05),
        sliderInput('axsd', 'x Standard deviation for class A', value = 1, min=0, max=2, step=0.05),
        sliderInput('aysd', 'y Standard deviation for class A', value = 1, min=0, max=2, step=0.05),

        h3("class B"),
        sliderInput('bx0', 'Mean x for class B', value = -1, min=-2, max=2, step=0.05),
        sliderInput('by0', 'Mean y for class B', value = 1, min=-2, max=2, step=0.05),
        sliderInput('bxsd', 'x Standard deviation for class B', value = 1, min=0, max=2, step=0.05),
        sliderInput('bysd', 'y Standard deviation for class B', value = 1, min=0, max=2, step=0.05)
    ),
    mainPanel(width=8,
        p("This application shows random values that have been assigned to two classes, A and B.
        The input area allows you to change the mean and standard deviation for the x and y value of each class.
        The output displays a plot with both classes. The number of points is 100 per class.
        The application is intended e.g. to display how far the elements of both could be distingished."),
        plotOutput('newPlot')
    )
))
