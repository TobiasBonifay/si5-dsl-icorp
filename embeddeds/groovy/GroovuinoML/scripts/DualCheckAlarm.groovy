sensor "button" onPin 9
sensor "button2" pin 12
actuator "buzzer" pin 13

state "on" means "buzzer" becomes "high"
state "off" means buzzer becomes low

initial "off"

from "on" to "off" when "button" becomes "low" and "button2" becomes "low"

export "DualCheckAlarm!"
