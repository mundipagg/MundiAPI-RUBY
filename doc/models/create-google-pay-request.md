
# Create Google Pay Request

The GooglePay Token Payment Request

## Structure

`CreateGooglePayRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Required | The token version |
| `data` | `String` | Required | The cryptography data |
| `header` | [`CreateGooglePayHeaderRequest`](../../doc/models/create-google-pay-header-request.md) | Required | The GooglePay header request |
| `signature` | `String` | Required | Detached PKCS #7 signature, Base64 encoded as string |
| `merchant_identifier` | `String` | Required | GooglePay Merchant identifier |

## Example (as JSON)

```json
{
  "version": "version4",
  "data": "data0",
  "header": {
    "ephemeral_public_key": "ephemeral_public_key6"
  },
  "signature": "signature8",
  "merchant_identifier": "merchant_identifier4"
}
```

