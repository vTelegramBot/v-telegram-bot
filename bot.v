/**
* Author: snxx
* For license and copyright information please follow this like:
* https://github.com/vTelegramBot/v-telegram-bot/blob/master/LICENSE
*/

module v_telegram_bot

import json

type HTTPClient interface {
	Do(req *http.Request) (*http.Response, error)
	Post(url string, data url.Values) (*http.Response, error)
}

pub struct Api {
pub:
	token  string `json: "token"`
	debug  bool   `json: "debug"`
	buffer int    `json: "buffer"`

	self     user       `json: "-"`
	client   HTTPClient `json: "-"`
	shutdown chan interface{}

	Endpoint string
}

fn (bot *Api) send_message(c chat_table) (Message, error) {
	resp, err := bot.request(c)
}

fn Bot(token string) (*Api, error) {
	return (token, endpoint, &http.Client{})
}

fn Client(token, Endpoint string, client HTTPClient) (*Api, error) {
    bot := &BotApi{
        token:    token,
        client:   client,
        buffer:   100,
        shutdown: make(chan interface{}),

        Endpoint: Endpoint
    }

    self := bot.get_me()
}

fn (bot *Api) get_me() (User, error) {
	resp := bot.Request("getMe", none)

	var usr User
	err := json.Unmarshal(resp.Result, &usr)

	return usr, err
}
