
# Create Checkout Boleto Payment Request

## Structure

`CreateCheckoutBoletoPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank` | `String` | Required | Bank identifier |
| `instructions` | `String` | Required | Instructions |
| `due_at` | `DateTime` | Required | Due date |

## Example (as JSON)

```json
{
  "bank": "bank8",
  "instructions": "instructions2",
  "due_at": "2016-03-13T12:52:32.123Z"
}
```

