
# Update Customer Request

Request for updating a customer

## Structure

`UpdateCustomerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | Name |
| `email` | `String` | Optional | Email |
| `document` | `String` | Optional | Document number |
| `type` | `String` | Optional | Person type |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Optional | Address |
| `metadata` | `Hash of String` | Optional | Metadata |
| `phones` | [`CreatePhonesRequest`](../../doc/models/create-phones-request.md) | Optional | - |
| `code` | `String` | Optional | Código de referência do cliente no sistema da loja. Max: 52 caracteres |
| `gender` | `String` | Optional | Gênero do cliente |
| `document_type` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "name": null,
  "email": null,
  "document": null,
  "type": null,
  "address": null,
  "metadata": null,
  "phones": null,
  "code": null,
  "gender": null,
  "document_type": null
}
```

