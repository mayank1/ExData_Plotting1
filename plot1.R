> data_full <- read.csv("C:/household_power_consumption.txt", header=T, sep=';', na.strings="?", 
                        +                       nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> data_full$Date <- as.Date(data_full$Date, format="%d/%m/%Y")
> rm
function (..., list = character(), pos = -1, envir = as.environment(pos), 
          inherits = FALSE) 
{
  dots <- match.call(expand.dots = FALSE)$...
  if (length(dots) && !all(sapply(dots, function(x) is.symbol(x) || 
                                    is.character(x)))) 
    stop("... must contain names or character strings")
  names <- sapply(dots, as.character)
  if (length(names) == 0L) 
    names <- character()
  list <- .Primitive("c")(list, names)
  .Internal(remove(list, envir, inherits))
}
<bytecode: 0x000000000ac207d0>
  <environment: namespace:base>
  > rm?
+ help
Error in `?`(rm, help) : 
  no documentation of type 'rm' and topic 'help' (or error in processing help)
> help(rm)
> data <- subset(data_full, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
> rm(data_full)
> View(data)
> hist(data$Global_active_power, main="Global Active Power", 
       +      xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> dev.copy(png, file="plot1.png", height=480, width=480)
png 
4 
> dev.off()
RStudioGD 
git init2 