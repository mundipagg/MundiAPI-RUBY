
# Create Recipient Request

Request for creating a recipient

## Structure

`CreateRecipientRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Recipient name |
| `email` | `String` | Required | Recipient email |
| `description` | `String` | Required | Recipient description |
| `document` | `String` | Required | Recipient document number |
| `type` | `String` | Required | Recipient type |
| `default_bank_account` | [`CreateBankAccountRequest`](../../doc/models/create-bank-account-request.md) | Required | Bank account |
| `metadata` | `Hash of String` | Required | Metadata |
| `transfer_settings` | [`CreateTransferSettingsRequest`](../../doc/models/create-transfer-settings-request.md) | Optional | Receiver Transfer Information |
| `code` | `String` | Required | Recipient code |
| `payment_mode` | `String` | Required | Payment mode<br>**Default**: `'bank_transfer'` |

## Example (as JSON)

```json
{
  "name": null,
  "email": null,
  "description": null,
  "document": null,
  "type": null,
  "default_bank_account": null,
  "metadata": null,
  "code": null,
  "payment_mode": "bank_transfer"
}
```

