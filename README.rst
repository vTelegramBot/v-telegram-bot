=============================================
`v-telegram-bot <https://t.me/vTeIegramBot>`_
=============================================

.. image:: ./assets/img/background.jpg
	:align: center
	:width: 850
	:height: 250
	:alt: V for Vendetta

.. image:: https://img.shields.io/badge/-Telegram-111314?style=for-the-badge&logo=telegram&logoColor=28A9E0
	:align: center
	:alt: Telegram
	:target: https://t.me/vTeIegramBot

============================================================
Installing `v-telegram-bot <https://git-scm.com/downloads>`_
============================================================

.. code:: shell
	$ git clone https://github.com/vTelegramBot/v-telegram-bot.git ~/.vmodules/vTelegramBot/v_telegram_bot

..
	Comming soon...

	You can install or upgrade v-telegram-bot with:
	$ vpm install v-telegram-bot --upgrade

	Or you can install from source with:
	$ git clone https://github.com/vTelegramBot/v-telegram-bot.git
	$ cd v-telegram-bot
	$ v setup.v install

	And:
	import telegram { ... }


Guide:
	1. `How to use? <https://github.com/vTelegramBot/v-telegram-bot/wiki/How-to-use>`_
	2. `FAQ <https://github.com/vTelegramBot/v-telegram-bot/wiki/FAQ>`_

Example

.. code:: v
	module main
	import vTelegramBot.v_telegram_bot { Bot }

	bot := Bot('TOKEN')

	fn main(message: Message) {
		bot.send_message(message.chat.id, 'Hello, vTelegramBot!')
	}

===================
Official resources:
===================

- News: `@vTelegramBot <https://t.me/vTeIegramBot>`_
- Documentation: `docs/doc.rst <https://github.com/vTelegramBot/v-telegram-bot/tree/master/docs/doc.rst>`_
- Source: `GitHub repo <https://github.com/vTelegramBot/v-telegram-bot>`_
- Issues/Bug tracker: `GitHub issues tracker <https://github.com/vTelegramBot/v-telegram-bot/issues>`_
- Test Bot: `@v4vendettaBot <https://t.me/v4vendettaBot>`_

=================
Code Contributors
=================

xxx
