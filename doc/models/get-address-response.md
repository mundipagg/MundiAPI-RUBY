
# Get Address Response

Response object for getting an Address

## Structure

`GetAddressResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `street` | `String` | Required | - |
| `number` | `String` | Required | - |
| `complement` | `String` | Required | - |
| `zip_code` | `String` | Required | - |
| `neighborhood` | `String` | Required | - |
| `city` | `String` | Required | - |
| `state` | `String` | Required | - |
| `country` | `String` | Required | - |
| `status` | `String` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `updated_at` | `DateTime` | Required | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `metadata` | `Hash of String` | Required | - |
| `line_1` | `String` | Required | Line 1 for address |
| `line_2` | `String` | Required | Line 2 for address |
| `deleted_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "street": "street0",
  "number": "number2",
  "complement": "complement4",
  "zip_code": "zip_code4",
  "neighborhood": "neighborhood6",
  "city": "city0",
  "state": "state4",
  "country": "country4",
  "status": "status8",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "customer": null,
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "line_1": "line_16",
  "line_2": "line_28",
  "deleted_at": null
}
```

