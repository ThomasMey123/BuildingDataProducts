library(shiny)

shinyServer(
    function(input,output){
        output$newPlot <- renderPlot({
            # Class A
            ax<-rnorm(100,mean=input$ax0,sd=input$axsd)
            ay<-rnorm(100,mean=input$ay0,sd=input$aysd)
            
            cl<-rep('A',100)
            adat<-data.frame(ax,ay,cl)
            colnames(adat)<-c("x","y","class")
            
            # Class B
            bx<-rnorm(100,mean=input$bx0,sd=input$bxsd)
            by<-rnorm(100,mean=input$by0,sd=input$bysd)
            
            cl<-rep('B',100)
            bdat<-data.frame(bx,by,cl)
            colnames(bdat)<-c("x","y","class")
            
            dat<-rbind(adat,bdat)
            
            plot(dat$x,dat$y,col=dat$class, pch=19, xlab="x",ylab="y",xlim=c(-5,5),ylim=c(-5,5),pty="s")
            legend("topright", pch = 19, col=c("black", "red"), legend=c("points of class A", "points of class B"))
            
        },height = 400, width = 400)
    }
)
