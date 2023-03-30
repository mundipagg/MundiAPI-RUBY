
# Cancel Split Request

Split

## Structure

`CancelSplitRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | Split type |
| `amount` | `Integer` | Required | Amount |
| `recipient_id` | `String` | Required | Recipient id |
| `options` | [`CreateSplitOptionsRequest`](../../doc/models/create-split-options-request.md) | Optional | The split options request |
| `split_rule_id` | `String` | Optional | Rule id |

## Example (as JSON)

```json
{
  "type": "type0",
  "amount": 46,
  "recipient_id": "recipient_id0",
  "options": null,
  "split_rule_id": null
}
```

