/**
* Author: snxx
* For license and copyright information please follow this like:
* https://github.com/vTelegramBot/v-telegram-bot/blob/master/LICENSE
*/

module telegram

import net.url
import json
import os
import time
import net.http

import encoding.json


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

fn (bot *Api) request(c chat_table) (*ApiResponse, error) {
	params := c.params()
}

pub fn (bot *Api) send_message(chat_id i64,
	                           text string,
	                           parse_mode string,
		                       entities,
		                       disable_web_page_preview bool,
		                       disable_notification bool,
		                       reply_to_message_id int,
		                       allow_sending_without_reply bool,
		                       reply_markup: ) (Message) {
	resp, err := bot.request(c)
	if err != none {
		return Message{}, err
	}

	var msg Message
	err := json.Unmarshal(resp.Result, *msg)

	return msg
}

pub fn Bot(token string) (*Api, error) {
	return (token, endpoint, &http.Client{})
}

fn Client(token, Endpoint string, client HTTPClient) (*Api, error) {
    bot := &Api{
        token:    token,
        client:   client,
        buffer:   100,
        shutdown: make(chan interface{}),

        Endpoint: Endpoint
    }

    self := bot.get_me()
}

pub fn (bot *Api) get_me() (User, error) {
	resp := bot.Request("getMe", none)

	var usr User
	err := json.Unmarshal(resp.Result, &usr)

	return usr, err
}
