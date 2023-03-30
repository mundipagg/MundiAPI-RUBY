
# Create Pix Payment Request

Contains information to create a pix payment

## Structure

`CreatePixPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_at` | `DateTime` | Optional | Datetime when pix payment will expire |
| `expires_in` | `Integer` | Optional | Seconds until pix payment expires |
| `additional_information` | [`Array<PixAdditionalInformation>`](../../doc/models/pix-additional-information.md) | Optional | Pix additional information |

## Example (as JSON)

```json
{
  "expires_at": null,
  "expires_in": null,
  "additional_information": null
}
```

