
# Get Anticipation Response

Anticipation

## Structure

`GetAnticipationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Id |
| `requested_amount` | `Integer` | Required | Requested amount |
| `approved_amount` | `Integer` | Required | Approved amount |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `pgid` | `String` | Required | Anticipation id on the gateway |
| `created_at` | `DateTime` | Required | Creation date |
| `updated_at` | `DateTime` | Required | Last update date |
| `payment_date` | `DateTime` | Required | Payment date |
| `status` | `String` | Required | Status |
| `timeframe` | `String` | Required | Timeframe |

## Example (as JSON)

```json
{
  "id": "id0",
  "requested_amount": 246,
  "approved_amount": 212,
  "recipient": null,
  "pgid": "pgid4",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "payment_date": "2016-03-13T12:52:32.123Z",
  "status": "status8",
  "timeframe": "timeframe2"
}
```

