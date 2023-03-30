
# Get Balance Response

Balance

## Structure

`GetBalanceResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Required | Currency |
| `available_amount` | `Integer` | Required | Amount available for transferring |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `waiting_funds_amount` | `Integer` | Required | - |
| `transferred_amount` | `Integer` | Required | - |

## Example (as JSON)

```json
{
  "currency": "currency0",
  "available_amount": 182,
  "recipient": null,
  "waiting_funds_amount": 252,
  "transferred_amount": 228
}
```

