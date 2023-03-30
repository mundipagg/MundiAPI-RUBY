
# Get Access Token Response

Response object for getting a access token

## Structure

`GetAccessTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `code` | `String` | Required | - |
| `status` | `String` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "code": "code8",
  "status": "status8",
  "created_at": "2016-03-13T12:52:32.123Z",
  "customer": null
}
```

