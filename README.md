# [v-telegram-bot](https://t.me/vTeIegramBot)
<div align="center">
	<img type="image/jpeg" width="850" height="250" src="./assets/img/background.jpg" alt="V for Vendetta"/>

[![Telegram][tg-img]][tg-url]
</div>

## Installing [v-telegram-bot](https://git-scm.com/downloads)
```sh
$ git clone https://github.com/vTelegramBot/v-telegram-bot.git ~/.vmodules/vTelegramBot/v_telegram_bot
```
<!-- Comming soon...
	You can install or upgrade v-telegram-bot with:
	```sh
	$ vpm install v-telegram-bot --upgrade
	```

	Or you can install from source with:
	```sh
	$ git clone https://github.com/vTelegramBot/v-telegram-bot.git
	$ cd v-telegram-bot
	$ v setup.v install
	```

	And:
	```v
	import telegram { ... }
	```
-->

##### Guide:
1. [How to use?](https://github.com/vTelegramBot/v-telegram-bot/wiki/How-to-use)
2. [FAQ](https://github.com/vTelegramBot/v-telegram-bot/wiki/FAQ)

## Example
<details>
	<summary>Click to see a basic example</summary>

```v
module main

import vTelegramBot.v_telegram_bot { Bot }

bot := Bot('TOKEN')


fn main(message: Message) {
    bot.send_message(message.chat.id, 'Hello, vTelegramBot!')
}
```
</details>

## Official resources:
- News: [@vTelegramBot](https://t.me/vTeIegramBot)
- Documentation: [docs/doc.rst](https://github.com/vTelegramBot/v-telegram-bot/tree/master/docs/doc.rst)
- Source: [GitHub repo](https://github.com/vTelegramBot/v-telegram-bot)
- Bug/Issues tracker: [GitHub issues tracker](https://github.com/vTelegramBot/v-telegram-bot/issues)
- Test Bot: [@VendettaRobot](https://t.me/VendettaRobot)

## Code Contributors
xxx

[tg-img]: https://img.shields.io/badge/-Telegram-111314?style=for-the-badge&logo=telegram&logoColor=28A9E0
[tg-url]: https://t.me/vTeIegramBot
