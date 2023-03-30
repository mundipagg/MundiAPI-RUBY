
# Create Subscription Split Request

Subscription's split

## Structure

`CreateSubscriptionSplitRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass\|FalseClass` | Required | Defines if the split is enabled |
| `rules` | [`Array<CreateSplitRequest>`](../../doc/models/create-split-request.md) | Required | Split |

## Example (as JSON)

```json
{
  "enabled": false,
  "rules": [
    {
      "type": "type6",
      "amount": 210,
      "recipient_id": "recipient_id6",
      "options": null
    }
  ]
}
```

