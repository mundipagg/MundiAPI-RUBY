
# Create Checkout Credit Card Payment Request

Checkout card payment request

## Structure

`CreateCheckoutCreditCardPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Card invoice text descriptor |
| `installments` | [`Array<CreateCheckoutCardInstallmentOptionRequest>`](../../doc/models/create-checkout-card-installment-option-request.md) | Optional | Payment installment options |
| `authentication` | [`CreatePaymentAuthenticationRequest`](../../doc/models/create-payment-authentication-request.md) | Optional | Creates payment authentication |
| `capture` | `TrueClass\|FalseClass` | Optional | Authorize and capture? |

## Example (as JSON)

```json
{
  "statement_descriptor": null,
  "installments": null,
  "authentication": null,
  "capture": null
}
```

