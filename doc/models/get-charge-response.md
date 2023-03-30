
# Get Charge Response

Response object for getting a charge

## Structure

`GetChargeResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `code` | `String` | Required | - |
| `gateway_id` | `String` | Required | - |
| `amount` | `Integer` | Required | - |
| `status` | `String` | Required | - |
| `currency` | `String` | Required | - |
| `payment_method` | `String` | Required | - |
| `due_at` | `DateTime` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `updated_at` | `DateTime` | Required | - |
| `last_transaction` | [`GetTransactionResponse`](../../doc/models/get-transaction-response.md) | Optional | - |
| `invoice` | [`GetInvoiceResponse`](../../doc/models/get-invoice-response.md) | Optional | - |
| `order` | [`GetOrderResponse`](../../doc/models/get-order-response.md) | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `metadata` | `Hash of String` | Required | - |
| `paid_at` | `DateTime` | Optional | - |
| `canceled_at` | `DateTime` | Optional | - |
| `canceled_amount` | `Integer` | Required | Canceled Amount |
| `paid_amount` | `Integer` | Required | Paid amount |
| `recurrency_cycle` | `String` | Optional | Defines whether the card has been used one or more times. |
| `interest_and_fine_paid` | `Integer` | Optional | interest and fine paid |

## Example (as JSON)

```json
{
  "id": "id0",
  "code": "code8",
  "gateway_id": "gateway_id0",
  "amount": 46,
  "status": "status8",
  "currency": "currency0",
  "payment_method": "payment_method0",
  "due_at": "2016-03-13T12:52:32.123Z",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "last_transaction": null,
  "invoice": null,
  "order": null,
  "customer": null,
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "paid_at": null,
  "canceled_at": null,
  "canceled_amount": 64,
  "paid_amount": 210,
  "recurrency_cycle": null,
  "interest_and_fine_paid": null
}
```

