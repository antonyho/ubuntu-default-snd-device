# ubuntu-default-snd-device
BASH setting default sound device on Ubuntu 16.04

Usage
=====

List sinks
----------

`pacmd list-sinks | grep -e 'name:' -e 'index'`
```
  * index: 2
	name: <alsa_output.pci-0000_00_1b.0.analog-stereo>
    index: 4
	name: <alsa_output.usb-XMOS_xCORE_USB_Audio_2.0-00.analog-stereo>
```


`pacmd list-sinks`

```
2 sink(s) available.
  * index: 2
	name: <alsa_output.pci-0000_00_1b.0.analog-stereo>
	driver: <module-alsa-card.c>
	flags: HARDWARE HW_MUTE_CTRL HW_VOLUME_CTRL DECIBEL_VOLUME LATENCY DYNAMIC_LATENCY
	state: SUSPENDED
	suspend cause: IDLE 
	priority: 9959
	volume: front-left: 65536 / 100% / 0.00 dB,   front-right: 65536 / 100% / 0.00 dB
	        balance 0.00
	base volume: 65536 / 100% / 0.00 dB
	volume steps: 65537
	muted: no
	current latency: 0.00 ms
	max request: 0 KiB
	max rewind: 0 KiB
	monitor source: 3
	sample spec: s16le 2ch 44100Hz
	channel map: front-left,front-right
	             Stereo
	used by: 0
	linked by: 0
	configured latency: 0.00 ms; range is 0.50 .. 371.52 ms
	card: 0 <alsa_card.pci-0000_00_1b.0>
	module: 6
	properties:
		alsa.resolution_bits = "16"
		device.api = "alsa"
		device.class = "sound"
		alsa.class = "generic"
		alsa.subclass = "generic-mix"
		alsa.name = "ALC283 Analog"
		alsa.id = "ALC283 Analog"
		alsa.subdevice = "0"
		alsa.subdevice_name = "subdevice #0"
		alsa.device = "0"
		alsa.card = "0"
		alsa.card_name = "HDA Intel PCH"
		alsa.long_card_name = "HDA Intel PCH at 0x81410000 irq 314"
		alsa.driver_name = "snd_hda_intel"
		device.bus_path = "pci-0000:00:1b.0"
		sysfs.path = "/devices/pci0000:00/0000:00:1b.0/sound/card0"
		device.bus = "pci"
		device.vendor.id = "8086"
		device.vendor.name = "Intel Corporation"
		device.product.id = "2284"
		device.form_factor = "internal"
		device.string = "front:0"
		device.buffering.buffer_size = "65536"
		device.buffering.fragment_size = "32768"
		device.access_mode = "mmap+timer"
		device.profile.name = "analog-stereo"
		device.profile.description = "Analog Stereo"
		device.description = "Built-in Audio Analog Stereo"
		alsa.mixer_name = "Realtek ALC283"
		alsa.components = "HDA:10ec0283,80862060,00100003 HDA:80862883,80860101,00100000"
		module-udev-detect.discovered = "1"
		device.icon_name = "audio-card-pci"
	ports:
		analog-output-headphones: Headphones (priority 9000, latency offset 0 usec, available: unknown)
			properties:
				device.icon_name = "audio-headphones"
	active port: <analog-output-headphones>
    index: 4
	name: <alsa_output.usb-XMOS_xCORE_USB_Audio_2.0-00.analog-stereo>
	driver: <module-alsa-card.c>
	flags: HARDWARE DECIBEL_VOLUME LATENCY DYNAMIC_LATENCY
	state: SUSPENDED
	suspend cause: IDLE 
	priority: 9049
	volume: front-left: 65536 / 100% / 0.00 dB,   front-right: 65536 / 100% / 0.00 dB
	        balance 0.00
	base volume: 65536 / 100% / 0.00 dB
	volume steps: 65537
	muted: no
	current latency: 0.00 ms
	max request: 0 KiB
	max rewind: 0 KiB
	monitor source: 5
	sample spec: s16le 2ch 44100Hz
	channel map: front-left,front-right
	             Stereo
	used by: 0
	linked by: 0
	configured latency: 0.00 ms; range is 0.50 .. 2000.00 ms
	card: 2 <alsa_card.usb-XMOS_xCORE_USB_Audio_2.0-00>
	module: 26
	properties:
		alsa.resolution_bits = "16"
		device.api = "alsa"
		device.class = "sound"
		alsa.class = "generic"
		alsa.subclass = "generic-mix"
		alsa.name = "USB Audio"
		alsa.id = "USB Audio"
		alsa.subdevice = "0"
		alsa.subdevice_name = "subdevice #0"
		alsa.device = "0"
		alsa.card = "1"
		alsa.card_name = "xCORE USB Audio 2.0"
		alsa.long_card_name = "XMOS xCORE USB Audio 2.0 at usb-0000:00:14.0-3, high speed"
		alsa.driver_name = "snd_usb_audio"
		device.bus_path = "pci-0000:00:14.0-usb-0:3:1.0"
		sysfs.path = "/devices/pci0000:00/0000:00:14.0/usb1/1-3/1-3:1.0/sound/card1"
		udev.id = "usb-XMOS_xCORE_USB_Audio_2.0-00"
		device.bus = "usb"
		device.vendor.id = "20b1"
		device.vendor.name = "XMOS Ltd"
		device.product.id = "000a"
		device.product.name = "xCORE USB Audio 2.0"
		device.serial = "XMOS_xCORE_USB_Audio_2.0"
		device.string = "hw:1"
		device.buffering.buffer_size = "352800"
		device.buffering.fragment_size = "176400"
		device.access_mode = "mmap+timer"
		device.profile.name = "analog-stereo"
		device.profile.description = "Analog Stereo"
		device.description = "xCORE USB Audio 2.0 Analog Stereo"
		alsa.mixer_name = "USB Mixer"
		alsa.components = "USB20b1:000a"
		module-udev-detect.discovered = "1"
		device.icon_name = "audio-card-usb"
	ports:
		analog-output: Analog Output (priority 9900, latency offset 0 usec, available: unknown)
			properties:
				
	active port: <analog-output>
```

