
# Get Price Bracket Response

Response object for getting a price bracket

## Structure

`GetPriceBracketResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_quantity` | `Integer` | Required | - |
| `price` | `Integer` | Required | - |
| `end_quantity` | `Integer` | Optional | - |
| `overage_price` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "start_quantity": 46,
  "price": 16,
  "end_quantity": null,
  "overage_price": null
}
```

