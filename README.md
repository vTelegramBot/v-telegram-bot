# [v-telegram-bot](https://vlang.io)

<div align="center">
	<img type="image/jpeg" width="850" height="250" 
		src="https://github.com/vTelegramBot/.github/blob/master/profile/assets/img/v-for-vendetta.jpg" alt="V for Vendetta"
	/>
	<a href="https://t.me/vTeIegramBot">
		<img type="image/svg+xml" 
			src="https://img.shields.io/badge/-Telegram-111314?style=for-the-badge&logo=telegram&logoColor=28A9E0" alt="Telegram"
		/>
	</a>
</div>

## Installing [v-telegram-bot](https://git-scm.com/downloads)

```sh
$ git clone https://github.com/vTelegramBot/v-telegram-bot.git
$ cd v-telegram-bot
$ vpm install setup.v --upgrade
$ vpm --help "v-telegram-bot"
```

##### Guide:

1. [How to use?](https://github.com/vTelegramBot/v-telegram-bot/wiki/How-to-use)
2. [FAQ](https://github.com/vTelegramBot/v-telegram-bot/wiki/FAQ)

## Example

<details>
	<summary>Click to see a basic example</summary>

```v
module main

import telegram { Bot }

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
