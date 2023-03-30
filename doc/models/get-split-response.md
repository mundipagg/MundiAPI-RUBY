
# Get Split Response

Split response

## Structure

`GetSplitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | Type |
| `amount` | `Integer` | Required | Amount |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `gateway_id` | `String` | Required | The split rule gateway id |
| `options` | [`GetSplitOptionsResponse`](../../doc/models/get-split-options-response.md) | Optional | - |
| `id` | `String` | Required | - |

## Example (as JSON)

```json
{
  "type": "type0",
  "amount": 46,
  "recipient": null,
  "gateway_id": "gateway_id0",
  "options": null,
  "id": "id0"
}
```

