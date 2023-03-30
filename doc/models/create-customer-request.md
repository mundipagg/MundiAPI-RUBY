
# Create Customer Request

Request for creating a new customer

## Structure

`CreateCustomerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `document` | `String` | Required | Document number. Only numbers, no special characters. |
| `type` | `String` | Required | Person type. Can be either 'individual' or 'company' |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | The customer's address |
| `metadata` | `Hash of String` | Required | Metadata |
| `phones` | [`CreatePhonesRequest`](../../doc/models/create-phones-request.md) | Required | - |
| `code` | `String` | Required | Customer code |
| `gender` | `String` | Optional | Customer Gender |
| `document_type` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "name": "{\n    \"name\": \"Tony Stark\"\n}",
  "email": null,
  "document": null,
  "type": null,
  "address": null,
  "metadata": null,
  "phones": null,
  "code": null
}
```

