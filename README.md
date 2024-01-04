# plant-art
Updated guide / tools for including plants and their electrical signals in your generative art using arduino + processing 3

If you follow this readme you'll be able to use the electrical noise found in your houseplants to help make generative art with the processing programming language.


# Shopping List (~$45)

* [arduino board for voltage](https://www.amazon.com/Elegoo-EL-CB-001-ATmega328P-ATMEGA16U2-Arduino/dp/B01EWOE0UU/) (if you already have one, i'm pretty sure any type with analog ports will work)

* [wires that fit nicely into the arduino](https://www.amazon.com/Haitronic-Multicolored-Breadboard-Arduino-raspberry/dp/B01LZF1ZSZ/)

* [electrodes](https://www.amazon.com/Pack-20-Electrode-Reusable-Self-Adhesive-Replacement/dp/B018OZVYFW/)

* [3.5mm cables for the electrodes](https://www.amazon.com/Tens-Replacement-Lead-Wires-Connectors/dp/B01BOJPKIW/ref=pd_sim_328_8?_encoding=UTF8&pd_rd_i=B01BOJPKIW&pd_rd_r=6RVCFKX05YNW70YWFRTR&pd_rd_w=hNxUc&pd_rd_wg=xCMWN&refRID=6RVCFKX05YNW70YWFRTR&th=1) (Make sure the 3.5mm ones are selected!)

* [cable with a female 3.5mm end](https://www.amazon.com/AmazonBasics-3-5mm-Female-Stereo-Audio/dp/B01CNAUYBY/)

*A plant

# Setting up (Hardware)

* Get the cable with the 3.5mm female end, and cut off the male end. You should have three wires inside. Take the ground wire, splice it to a Arduino wire of the same color and plug it into the Arduino's 'GND' port. Then take the live/traveller wire and splice it into a brown Arduino wire then plug that into the Arduino's 'A2' port.

* Next, plug a 3.5mm cable for the electrodes into the female 3.5mm port we just spliced in, and attach both of the snapping button ends to an electrode.

* Place the electrodes on a plant, try to put them on different, but nearby leaves. If they're on the same leaf, you won't get very interesting results. 

### WARNING: Don't leave the electrodes on the leaves for more than a day at a time! It will hurt the plant.


# Setting up (Software)

* Download + install the [arduino IDE](https://www.arduino.cc/en/Main/Software)

* Start running `voltage.ino` on your board - you will have to use the "tools" dropdown menu and select the right serial port (usually /dev/ttyUSB0)

* Download + install the [processing 3 IDE](https://processing.org/download/)

* Use `read_voltage.pde` to help you read/graph the voltage from processing. If it's working, you should see a slightly noisy function that hangs around a constant value for the most part.

* Use `template.pde` as a base program for your artwork; while in the `draw` loop, you can get the value of the plant anytime through the variable `plantValue` (which is a float).

# Sample artworks

Here is what `sample_circle.pde` generates while attached to one of my Snake plants (Sansevieria Laurentii) - note that it isn't the same algorithm from the first picture; just a really quick sample one I threw together to publish publicly.


