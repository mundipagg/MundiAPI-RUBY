
# Get Debit Card Transaction Response

Response object for getting a debit card transaction

## Structure

`GetDebitCardTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Required | Text that will appear on the debit card's statement |
| `acquirer_name` | `String` | Required | Acquirer name |
| `acquirer_affiliation_code` | `String` | Required | Aquirer affiliation code |
| `acquirer_tid` | `String` | Required | Acquirer TID |
| `acquirer_nsu` | `String` | Required | Acquirer NSU |
| `acquirer_auth_code` | `String` | Required | Acquirer authorization code |
| `operation_type` | `String` | Required | Operation type |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Required | Card data |
| `acquirer_message` | `String` | Required | Acquirer message |
| `acquirer_return_code` | `String` | Required | Acquirer Return Code |
| `mpi` | `String` | Required | Merchant Plugin |
| `eci` | `String` | Required | Electronic Commerce Indicator (ECI) |
| `authentication_type` | `String` | Required | Authentication type |
| `threed_authentication_url` | `String` | Required | 3D-S Authentication Url |

## Example (as JSON)

```json
{
  "gateway_id": "gateway_id0",
  "amount": 86,
  "status": "status8",
  "success": false,
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "attempt_count": 110,
  "max_attempts": 134,
  "splits": [
    {
      "type": "type4",
      "amount": 102,
      "recipient": null,
      "gateway_id": "gateway_id4",
      "options": null,
      "id": "id6"
    },
    {
      "type": "type3",
      "amount": 103,
      "recipient": null,
      "gateway_id": "gateway_id3",
      "options": null,
      "id": "id7"
    },
    {
      "type": "type2",
      "amount": 104,
      "recipient": null,
      "gateway_id": "gateway_id2",
      "options": null,
      "id": "id8"
    }
  ],
  "next_attempt": null,
  "transaction_type": "debit_card",
  "id": "id0",
  "gateway_response": {
    "code": "code6",
    "errors": [
      {
        "message": "message3"
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
      "type": "type2",
      "amount": 140,
      "recipient": null,
      "gateway_id": "gateway_id2",
      "options": null,
      "id": "id8"
    }
  ],
  "interest": null,
  "fine": null,
  "max_days_to_pay_past_due": null,
  "statement_descriptor": "statement_descriptor0",
  "acquirer_name": "acquirer_name4",
  "acquirer_affiliation_code": "acquirer_affiliation_code8",
  "acquirer_tid": "acquirer_tid0",
  "acquirer_nsu": "acquirer_nsu0",
  "acquirer_auth_code": "acquirer_auth_code8",
  "operation_type": "operation_type6",
  "card": {
    "id": "id6",
    "last_four_digits": "last_four_digits2",
    "brand": "brand0",
    "holder_name": "holder_name2",
    "exp_month": 228,
    "exp_year": 68,
    "status": "status2",
    "created_at": "2016-03-13T12:52:32.123Z",
    "updated_at": "2016-03-13T12:52:32.123Z",
    "billing_address": {
      "street": "street8",
      "number": "number4",
      "zip_code": "zip_code2",
      "neighborhood": "neighborhood4",
      "city": "city2",
      "state": "state6",
      "country": "country2",
      "complement": "complement6",
      "line_1": "line_18",
      "line_2": "line_26"
    },
    "customer": null,
    "metadata": {
      "key0": "metadata7"
    },
    "type": "type4",
    "holder_document": "holder_document0",
    "deleted_at": null,
    "first_six_digits": "first_six_digits6",
    "label": "label6"
  },
  "acquirer_message": "acquirer_message0",
  "acquirer_return_code": "acquirer_return_code8",
  "mpi": "mpi2",
  "eci": "eci0",
  "authentication_type": "authentication_type2",
  "threed_authentication_url": "threed_authentication_url6"
}
```

