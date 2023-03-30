
# Get Recipient Response

Recipient response

## Structure

`GetRecipientResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Id |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `document` | `String` | Required | Document |
| `description` | `String` | Required | Description |
| `type` | `String` | Required | Type |
| `status` | `String` | Required | Status |
| `created_at` | `DateTime` | Required | Creation date |
| `updated_at` | `DateTime` | Required | Last update date |
| `deleted_at` | `DateTime` | Required | Deletion date |
| `default_bank_account` | [`GetBankAccountResponse`](../../doc/models/get-bank-account-response.md) | Required | Default bank account |
| `gateway_recipients` | [`Array<GetGatewayRecipientResponse>`](../../doc/models/get-gateway-recipient-response.md) | Required | Info about the recipient on the gateway |
| `metadata` | `Hash of String` | Required | Metadata |
| `automatic_anticipation_settings` | [`GetAutomaticAnticipationResponse`](../../doc/models/get-automatic-anticipation-response.md) | Optional | - |
| `transfer_settings` | [`GetTransferSettingsResponse`](../../doc/models/get-transfer-settings-response.md) | Optional | - |
| `code` | `String` | Required | Recipient code |
| `payment_mode` | `String` | Required | Payment mode<br>**Default**: `'bank_transfer'` |

## Example (as JSON)

```json
{
  "id": null,
  "name": null,
  "email": null,
  "document": null,
  "description": null,
  "type": null,
  "status": null,
  "created_at": null,
  "updated_at": null,
  "deleted_at": null,
  "default_bank_account": null,
  "gateway_recipients": null,
  "metadata": null,
  "code": null,
  "payment_mode": "bank_transfer"
}
```

