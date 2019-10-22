library(chron)
library(RColorBrewer)
library(lattice)
library(ncdf4)
library(lubridate)
ncname <- "ta_2m_1hr_20090101_d02"
ncfname <- paste(ncname, ".nc", sep = "")
dname <- "data"  # note: tmp means temperature (not temporary)
9
# open a NetCDF file
ncin <- nc_open(ncfname)
lon <- ncvar_get(ncin,"lon")
lat <- ncvar_get(ncin,"lat")
time <- ncvar_get(ncin,"time")
dayOfJanuary = c(1:31, 1)
time <- tail(as.POSIXct(time*3600,origin='1970-01-01 00:00:00') )