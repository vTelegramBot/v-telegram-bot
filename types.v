/**
* Author: snxx
* For license and copyright information please follow this like:
* https://github.com/vTelegramBot/v-telegram-bot/blob/master/LICENSE
*/

module v_telegram_bot

pub struct ApiResponse {
pub:
    ok          bool                `json: "ok"`
    result      json.RawMessage     `json: "result, omitempty"`
    error_code  int                 `json: "error_code, omitempty"`
    description string              `json: "description, omitempty"`
    parameters  *ResponseParameters `json: "parameters, omitempty"`
}

pub struct Update {
pub:
    update_id            int                 `json: "update_id"`
    message              *Message            `json: "message, omitempty"`
    edited_message       *Message            `json: "edited_message, omitempty"`
    channel_post         *Message            `json: "channel_post, omitempty"`
    edited_channel_post  *Message            `json: "edited_channel_post, omitempty"`
    inline_query         *InlineQuery        `json: "inline_query, omitempty"`
    chosen_inline_result *ChosenInlineResult `json: "chosen_inline_result, omitempty"`
    callback_query       *CallbackQuery      `json: "callback_query, omitempty"`
    shipping_query       *ShippingQuery      `json: "shipping_query, omitempty"`
    pre_checkout_query   *PreCheckoutQuery   `json: "pre_checkout_query, omitempty"`
    poll                 *Poll               `json: "poll, omitempty"`
    poll_answer          *PollAnswer         `json: "poll_answer, omitempty"`
    my_chat_member       *ChatMemberUpdated  `json: "my_chat_member"`
    chat_member          *ChatMemberUpdated  `json: "chat_member"`
}

pub struct User {
pub:
    id         i64    `json: "id"`
    is_bot     bool   `json: "is_bot, omitempty"`
    first_name string `json: "first_name"`
    last_name  string `json: "last_name, omitempty"`
    username   string `json: "username, omitempty"`

    language_code               string `json: "language_code, omitempty"`
    can_join_groups             bool   `json: "can_join_groups, omitempty"`
    can_read_all_group_messages bool   `json: "can_read_all_group_messages, omitempty"`
    supports_inline_queries     bool   `json: "supports_inline_queries, omitempty"`
}

pub struct Chat {
pub:
    id          i64        `json: "id"`
    types       string     `json: "type"`
    title       string     `json: "title, omitempty"`
    username    string     `json: "username, omitempty"`
    first_name  string     `json: "first_name, omitempty"`
    last_name   string     `json: "last_name, omitempty"`
    photo       *ChatPhoto `json: "photo"`
    bio         string     `json: "bio, omitempty"`
    description string     `json: "description, omitempty"`
    invite_link string     `json: "invite_link, omitempty"`

    pinned_message      *Message         `json: "pinned_message, omitempty"`
    permissions         *ChatPermissions `json: "permissions, omitempty"`
    slow_mode_delay     int              `json: "slow_mode_delay, omitempty"`
    sticker_set_name    string           `json: "sticker_set_name, omitempty"`
    can_set_sticker_set bool             `json: "can_set_sticker_set, omitempty"`
    linked_chat_id      int              `json: "linked_chat_id, omitempty"`
    location            *ChatLocation    `json: "location"`
}
