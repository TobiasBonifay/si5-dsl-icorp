sensor "button" onPin 9
actuator "led" pin 12
actuator "buzzer" pin 13

state "on1" means "buzzer" becomes "high" and "led" becomes "low"
state "on2" means "buzzer" becomes "low" and "led" becomes "high"
state "off" means "buzzer" becomes "low" and "led" becomes "low"

initial "off"

from "on1" to "on2" when "button" becomes "high" and state is "on1"
from "on2" to "off" when "button" becomes "high" and state is "on2"
from "off" to "on1" when "button" becomes "high"

export "Switch!"