set_max_delay -from [get_ports A[*]] -to [get_ports AgtBplusOne] 2
set_max_delay -from [get_ports A[*]] -to [get_ports AgteBplusOne] 2
set_max_delay -from [get_ports A[*]] -to [get_ports AltBplusOne] 2
set_max_delay -from [get_ports A[*]] -to [get_ports AlteBplusOne] 2
set_max_delay -from [get_ports A[*]] -to [get_ports AeqBplusOne] 2
set_max_delay -from [get_ports A[*]] -to [get_ports overflow] 2

set_max_delay -from [get_ports B[*]] -to [get_ports AgtBplusOne] 2
set_max_delay -from [get_ports B[*]] -to [get_ports AgteBplusOne] 2
set_max_delay -from [get_ports B[*]] -to [get_ports AltBplusOne] 2
set_max_delay -from [get_ports B[*]] -to [get_ports AlteBplusOne] 2
set_max_delay -from [get_ports B[*]] -to [get_ports AeqBplusOne] 2
set_max_delay -from [get_ports B[*]] -to [get_ports overflow] 2

