sensor "button",9
actuator "led",10
actuator "buzzer",11

state "on1" means "buzzer" becomes "high" and "led" becomes "low"
state "on2" means "buzzer" becomes "low" and "led" becomes "high"
state "off" means "buzzer" becomes "low" and "led" becomes "low"

initial "off"

from "on1" to "on2" when "button" becomes "high"
from "on2" to "off" when "button" becomes "high"
from "off" to "on1" when "button" becomes "high"

export "sc4"