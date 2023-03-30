
# Get Checkout Payment Settings Response

Checkout Payment Settings Response

## Structure

`GetCheckoutPaymentSettingsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `success_url` | `String` | Required | Success Url |
| `payment_url` | `String` | Required | Payment Url |
| `accepted_payment_methods` | `Array<String>` | Required | Accepted Payment Methods |
| `status` | `String` | Required | Status |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | Customer |
| `amount` | `Integer` | Optional | Payment amount |
| `default_payment_method` | `String` | Optional | Default Payment Method |
| `gateway_affiliation_id` | `String` | Optional | Gateway Affiliation Id |

## Example (as JSON)

```json
{
  "success_url": "success_url2",
  "payment_url": "payment_url6",
  "accepted_payment_methods": [
    "accepted_payment_methods3",
    "accepted_payment_methods4",
    "accepted_payment_methods5"
  ],
  "status": "status8",
  "customer": null,
  "amount": null,
  "default_payment_method": null,
  "gateway_affiliation_id": null
}
```

