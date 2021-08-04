/**
* Author: snxx
* For license and copyright information please follow this like:
* https://github.com/vTelegramBot/v-telegram-bot/blob/master/LICENSE
*/

module v_telegram_bot

import net.url
import fmt
import strconv

/* Telegram API constants */
const (
    endpoint      = "https://api.telegram.org/bot%s/%s"
    file_endpoint = "https://api.telegram.org/file/bot%s/%s"
)

/* Constant values for Chat Actions */
const (
    typing       = "typing"
    upload_photo = "upload_photo"
    record_video = "record_video"
    upload_video = "upload_video"
    record_voice = "record_voice"
    upload_voice = "upload_voice"
    record_audio = "record_audio"
    upload_audio = "upload_audio"

    upload_document   = "upload_document"
    find_location     = "find_location"
    record_video_note = "record_video_note"
    upload_video_note = "upload_video_note"
)

/* API Error */
const (
	forbidden = "forbidden"
)

/* Constant values for ParseMode */
const (
    Markdown   = "Markdown"
    MarkdownV2 = "MarkdownV2"
    HTML       = "HTML"
)

type BaseChat struct {
    chat_id                     i64
    username                    string
    reply_to_message_id         int
    reply_markup                interface{}
    disable_notification        bool
    allow_sending_without_reply bool
}

fn (chat *BaseChat) param(Param, error) {
    param := make(Param)

    param.
}

type BaseFile struct {
    BaseChat
    File interface{}
}

fn (file BaseFile) param() (Param, error) {
    return file.BaseChat.param()
}

type BaseEdit struct {
    chat_id           i64
    username          string
    message_id        int
    inline_message_id string
    reply_markup      *InlineKeyboardMarkup
}

fn (edit BaseEdit) param() (Param, error) {
    param := make(Param)
}

MessageConfig struct {
    BaseChat
    text                     string
    parse_mode               string
    entities                 []MessageEntity
    disable_web_page_preview bool
}