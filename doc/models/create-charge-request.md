
# Create Charge Request

Request for creating a new charge

## Structure

`CreateChargeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Required | Code |
| `amount` | `Integer` | Required | The amount of the charge, in cents |
| `customer_id` | `String` | Required | The customer's id |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Required | Customer data |
| `payment` | [`CreatePaymentRequest`](../../doc/models/create-payment-request.md) | Required | Payment data |
| `metadata` | `Hash of String` | Required | Metadata |
| `due_at` | `DateTime` | Optional | The charge due date |
| `antifraud` | [`CreateAntifraudRequest`](../../doc/models/create-antifraud-request.md) | Required | - |
| `order_id` | `String` | Required | Order Id |

## Example (as JSON)

```json
{
  "code": null,
  "amount": null,
  "customer_id": null,
  "customer": {
    "name": "{\n    \"name\": \"Tony Stark\"\n}",
    "email": null,
    "document": null,
    "type": null,
    "address": null,
    "metadata": null,
    "phones": null,
    "code": null
  },
  "payment": null,
  "metadata": null,
  "antifraud": null,
  "order_id": null
}
```

