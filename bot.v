/**
* Author: snxx
* For license and copyright information please follow this like:
* https://github.com/vTelegramBot/v-telegram-bot/blob/master/LICENSE
*/

module v_telegram_bot

import json

pub struct bot_api {
pub:
	token  string `json: "token"`
	debug  bool   `json: "debug"`
	buffer int    `json: "buffer"`

	self     user       `json: "-"`
	client   HTTPClient `json: "-"`
	shutdown chan interface{}

	Endpoint string
}

fn (bot *) send_message(c chat_table) (message, error) {
	resp, err := bot.request(c)
}

fn Bot(token string) (*bot_api, error) {
	return (token, endpoint, &http.Client{})
}

fn Client(token, Endpoint string, client HTTPClient) (*bot_api, error) {
    bot := &bot_api{
        token:    token,
        client:   client,
        buffer:   100,
        shutdown: make(chan interface{}),

        Endpoint: Endpoint
    }

	self := bot.get_me()
}

fn (bot *bot_api) get_me() (user, error) {
	resp := bot.Request("getMe", none)

	var usr user7
	err := json.Unmarshal(resp.Result, &usr)

	return usr, err
}
