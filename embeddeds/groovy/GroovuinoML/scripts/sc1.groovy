sensor "button",9
actuator "led",10
actuator "buzzer",11

state "on" means "led" becomes "high" and "buzzer" becomes "high"
state "off" means "led" becomes "low" and "buzzer" becomes "low"

initial "off"

from "on" to "off" when "button" becomes "low"
from "off" to "on" when "button" becomes "high"

export "sc1"