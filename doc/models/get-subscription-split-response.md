
# Get Subscription Split Response

Subscription's split response

## Structure

`GetSubscriptionSplitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass\|FalseClass` | Required | Defines if the split is enabled |
| `rules` | [`Array<GetSplitResponse>`](../../doc/models/get-split-response.md) | Required | Split |

## Example (as JSON)

```json
{
  "enabled": false,
  "rules": [
    {
      "type": "type6",
      "amount": 210,
      "recipient": null,
      "gateway_id": "gateway_id6",
      "options": null,
      "id": "id4"
    }
  ]
}
```

