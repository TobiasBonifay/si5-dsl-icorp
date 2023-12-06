sensor "button",1
actuator "led",2

state "on" means "led" becomes "high"
state "off" means "led" becomes "low"

initial "off"

from "on" to "off" when "button" becomes "high"
from "off" to "on" when "button" becomes "high"

export "pinallocation"