
# Get Transaction Response

Generic response object for getting a transaction.

## Structure

`GetTransactionResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gateway_id` | `String` | Required | Gateway transaction id |
| `amount` | `Integer` | Required | Amount in cents |
| `status` | `String` | Required | Transaction status |
| `success` | `TrueClass\|FalseClass` | Required | Indicates if the transaction ocurred successfuly |
| `created_at` | `DateTime` | Required | Creation date |
| `updated_at` | `DateTime` | Required | Last update date |
| `attempt_count` | `Integer` | Required | Number of attempts tried |
| `max_attempts` | `Integer` | Required | Max attempts |
| `splits` | [`Array<GetSplitResponse>`](../../doc/models/get-split-response.md) | Required | Splits |
| `next_attempt` | `DateTime` | Optional | Date and time of the next attempt |
| `transaction_type` | `String` | Optional | - |
| `id` | `String` | Required | Código da transação |
| `gateway_response` | [`GetGatewayResponseResponse`](../../doc/models/get-gateway-response-response.md) | Required | The Gateway Response |
| `antifraud_response` | [`GetAntifraudResponse`](../../doc/models/get-antifraud-response.md) | Required | - |
| `metadata` | `Hash of String` | Optional | - |
| `split` | [`Array<GetSplitResponse>`](../../doc/models/get-split-response.md) | Required | - |
| `interest` | [`GetInterestResponse`](../../doc/models/get-interest-response.md) | Optional | - |
| `fine` | [`GetFineResponse`](../../doc/models/get-fine-response.md) | Optional | - |
| `max_days_to_pay_past_due` | `Integer` | Optional | - |

## Example (as JSON)

```json
{
  "gateway_id": "gateway_id0",
  "amount": 46,
  "status": "status8",
  "success": false,
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "attempt_count": 70,
  "max_attempts": 174,
  "splits": [
    {
      "type": "type4",
      "amount": 62,
      "recipient": null,
      "gateway_id": "gateway_id4",
      "options": null,
      "id": "id6"
    },
    {
      "type": "type3",
      "amount": 63,
      "recipient": null,
      "gateway_id": "gateway_id3",
      "options": null,
      "id": "id7"
    }
  ],
  "next_attempt": null,
  "transaction_type": "transaction",
  "id": "id0",
  "gateway_response": {
    "code": "code6",
    "errors": [
      {
        "message": "message3"
      },
      {
        "message": "message4"
      },
      {
        "message": "message5"
      }
    ]
  },
  "antifraud_response": {
    "status": "status0",
    "return_code": "return_code8",
    "return_message": "return_message4",
    "provider_name": "provider_name4",
    "score": "score8"
  },
  "metadata": null,
  "split": [
    {
      "type": "type6",
      "amount": 28,
      "recipient": null,
      "gateway_id": "gateway_id6",
      "options": null,
      "id": "id4"
    },
    {
      "type": "type5",
      "amount": 27,
      "recipient": null,
      "gateway_id": "gateway_id5",
      "options": null,
      "id": "id5"
    },
    {
      "type": "type4",
      "amount": 26,
      "recipient": null,
      "gateway_id": "gateway_id4",
      "options": null,
      "id": "id6"
    }
  ],
  "interest": null,
  "fine": null,
  "max_days_to_pay_past_due": null
}
```

