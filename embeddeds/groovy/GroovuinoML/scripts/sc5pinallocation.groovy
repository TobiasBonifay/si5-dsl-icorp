sensor "lightsensor","analog"
actuator "led","digital"

state "on" means "led" becomes "high"
state "off" means "led" becomes "low"

initial "off"

from "on" to "off" when "lightsensor" becomes "high"
from "off" to "on" when "lightsensor" becomes "high"

export "pinallocation"