# SolaX Proxy

Runs nginx on the Home Assistant host and forwards every request to a SolaX
inverter's web server, always sending a fixed `X-Forwarded-For` header.

## Setup

1. Set **Inverter address** in the Configuration tab (e.g. `http://10.17.0.44`).
2. Start the add-on.
3. In the SolaX integration use the Home Assistant host's IP, port `80` (or the
   port set under Network), and the inverter's serial number as the password.

## Options

| Option | Default | Meaning |
| --- | --- | --- |
| `upstream` | `http://10.17.0.44` | The inverter's URL |
| `forwarded_for` | `5.8.8.8` | `X-Forwarded-For` sent to the inverter |
