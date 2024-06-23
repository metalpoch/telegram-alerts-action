# Telegram Alerts Action

This action send a messages to Telegram chat

## Inputs

### `bot-token-id`
**Required** The Bot token ID

### `chat-id`
**Required** Unique identifier for the target chat or username

### `text`
**Required** The Bot token ID

### `parse-mode`
Send Markdown, MarkdownV2 or HTML. Default: MarkdownV2

### `disable-web-page-preview`
Disables link previews for links in this message. Default false

### `disable-notification`
Sends the message silently. Default false

## Outputs

### `response`
A JSON of the alert response

## Example usage

```yaml
uses: metalpoch/telegram-alerts-action@v1
with:
  bot-token-id: ${{ secrets.TELEGRAM_TOKEN_ID }}
  chat-id: ${{ secrets.TELEGRAM_CHAT_ID }}
  text: "<b>${{ github.ref_name }} - ${{ github.sha }}</b>
    <pre lenguage='python'>print('hello world')</pre>
    <a href='https://pochland.com.ve'>Pochland</a>"
  parse-mode: HTML
  disable-notification: true
  disable-web-page-preview: true
```
  
