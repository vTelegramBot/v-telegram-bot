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

pub Message struct {
pub:
    message_id              int      `json: "message_id"`
    from                    *User    `json: "from, omitempty"`
    sender_chat             *Chat    `json: "sender_chat, omitempty"`
    date                    int      `json: "date"`
    chat                    *Chat    `json: "chat"`
    forward_from            *User    `json: "forward_from, omitempty"`
    forward_from_chat       *Chat    `json: "forward_from_chat, omitempty"`
    forward_from_message_id int      `json: "forward_from_message_id, omitempty"`
    forward_signature       string   `json: "forward_signature, omitempty"`
    forward_sender_name     string   `json: "forward_sender_name, omitempty"`
    forward_date            int      `json: "forward_date, omitempty"`
    reply_to_message        *Message `json: "reply_to_message, omitempty"`
    via_bot                 *User    `json: "via_bot, omitempty"`
    edit_date               int      `json: "edit_date, omitempty"`
    media_group_id          string   `json: "media_group_id, omitempty"`
    author_signature        string   `json: "author_signature, omitempty"`
    text                    string   `json: "text, omitempty"`

    entities         []MessageEntity `json: "entities, omitempty"`
    animation        *Animation      `json: "animation, omitempty"`
    audio            *Audio          `json: "audio, omitempty"`
    document         *Document       `json: "document, omitempty"`
    photo            *PhotoSize      `json: "photo, omitempty"`
    sticker          *Sticker        `json: "sticker, omitempty"`
    video            *Video          `json: "video, omitempty"`
    video_note       *VideoNote      `json: "video_note, omitempty"`
    voice            *Voice          `json: "voice, omitempty"`
    caption          string          `json: "caption, omitempty"`
    caption_entities []MessageEntity `json: "caption_entities, omitempty"`
    contact          *Contact        `json: "contact, omitempty"`
    dice             *Dice           `json: "dice, omitempty"`
    game             *Game           `json: "game, omitempty"`
    poll             *Poll           `json: "poll, omitempty"`
    venue            *Venue          `json: "venue, omitempty"`
    location         *Location       `json: "location, omitempty"`
    new_chat_members *User           `json: "new_chat_members, omitempty"`
    left_chat_member *User           `json: "left_chat_member, omitempty"`
    new_chat_title   string          `json: "new_chat_title, omitempty"`
    new_chat_photo   []PhotoSize     `json: "new_chat_photo, omitempty"`

    delete_chat_photo       bool `json: "delete_chat_photo, omitempty"`
    group_chat_created      bool `json: "group_chat_created, omitempty"`
    supergroup_chat_created bool `json: "supergroup_chat_created, omitempty"`
    channel_chat_created    bool `json: "channel_chat_created, omitempty"`

    message_auto_delete_timer_changed *MessageAutoDeleteTimerChanged `json: "message_auto_delete_timer_changed"`
    migrate_to_chat_id   i64 `json: "migrate_to_chat_id, omitempty"`
    migrate_from_chat_id i64 `json: "migrate_from_chat_id, omitempty"`

    pinned_message                  *Message                      `json: "pinned_message, omitempty"`
    invoice                         *Invoice                      `json: "invoice, omitempty"`
    successful_payment              *SuccessfulPayment            `json: "successful_payment, omitempty"`
    connected_website               string                        `json: "connected_website, omitempty"`
    passport_data                   *PassportData                 `json: "passport_data, omitempty"`
    proximity_alert_triggered       *ProximityAlertTriggered      `json: "proximity_alert_triggered"`
    voice_chat_scheduled            *VoiceChatScheduled           `json: "voice_chat_scheduled"`
    voice_chat_participants_invited *VoiceChatParticipantsInvited `json: "voice_chat_participants_invited"`
    reply_markup                    *InlineKeyboardMarkup         `json: "reply_markup, omitempty"`
}
