
# Create Card Request

Card data

## Structure

`CreateCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `String` | Required | Credit card number |
| `holder_name` | `String` | Required | Holder name, as written on the card |
| `exp_month` | `Integer` | Required | The expiration month |
| `exp_year` | `Integer` | Required | The expiration year, that can be informed with 2 or 4 digits |
| `cvv` | `String` | Required | The card's security code |
| `billing_address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Card's billing address |
| `brand` | `String` | Required | Card brand |
| `billing_address_id` | `String` | Required | The address id for the billing address |
| `metadata` | `Hash of String` | Required | Metadata |
| `type` | `String` | Required | Card type<br>**Default**: `'credit'` |
| `options` | [`CreateCardOptionsRequest`](../../doc/models/create-card-options-request.md) | Required | Options for creating the card |
| `holder_document` | `String` | Optional | Document number for the card's holder |
| `private_label` | `TrueClass\|FalseClass` | Required | Indicates whether it is a private label card |
| `label` | `String` | Required | - |
| `id` | `String` | Optional | Identifier |
| `token` | `String` | Optional | token identifier |

## Example (as JSON)

```json
{
  "number": null,
  "holder_name": null,
  "exp_month": null,
  "exp_year": null,
  "cvv": null,
  "billing_address": null,
  "brand": null,
  "billing_address_id": null,
  "metadata": null,
  "type": "credit",
  "options": null,
  "private_label": null,
  "label": null
}
```

