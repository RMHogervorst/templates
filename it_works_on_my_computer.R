# The idea is to run this script at the end of the blogpost and return a file 
# that makes it easy to verify your setup against mine. 
# It will include the current setup,
# some information about outside connections, links etc. 
# in a nice format
# it needs to work with a simple command, such as: reprexampl:blog, hide the html?

### current setup
setup <- devtools::session_info() 


## outside connections
# find all import statements and links
# copy all links to list

# create a small report in txt or html? or really simple html snippit that is hidden by default?
