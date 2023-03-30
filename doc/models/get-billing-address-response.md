
# Get Billing Address Response

Response object for getting a billing address

## Structure

`GetBillingAddressResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Required | - |
| `number` | `String` | Required | - |
| `zip_code` | `String` | Required | - |
| `neighborhood` | `String` | Required | - |
| `city` | `String` | Required | - |
| `state` | `String` | Required | - |
| `country` | `String` | Required | - |
| `complement` | `String` | Required | - |
| `line_1` | `String` | Required | Line 1 for address |
| `line_2` | `String` | Required | Line 2 for address |

## Example (as JSON)

```json
{
  "street": "street0",
  "number": "number2",
  "zip_code": "zip_code4",
  "neighborhood": "neighborhood6",
  "city": "city0",
  "state": "state4",
  "country": "country4",
  "complement": "complement4",
  "line_1": "line_16",
  "line_2": "line_28"
}
```

