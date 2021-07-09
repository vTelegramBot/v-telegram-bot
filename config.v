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
