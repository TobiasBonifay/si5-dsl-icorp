sensor "button1" onPin 9
sensor "button2" onPin 10
actuator "buzzer" pin 13

state "on" means "buzzer" becomes "high"
state "off" means "buzzer" becomes "low"

initial "off"

from "off" to "on" when "button1" becomes "high" and "button2" becomes "high"
from "on" to "off" when "button1" becomes "low"

export "Switch!"