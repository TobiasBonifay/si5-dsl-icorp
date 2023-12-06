sensor "button1", 9
sensor "button2", 10
actuator "buzzer", 11

state "on" means "buzzer" becomes "high"
state "off" means "buzzer" becomes "low"

initial "off"

from "off" to "on" when "button1" becomes "high" and "button2" becomes "high"
from "on" to "off" when "button1" becomes "low" or "button2" becomes "low"

export "sc2"