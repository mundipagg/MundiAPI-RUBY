# Transactions

```ruby
transactions_controller = client.transactions
```

## Class Name

`TransactionsController`


# Get Transaction

```ruby
def get_transaction(transaction_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_id` | `String` | Template, Required | - |

## Response Type

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Example Usage

```ruby
transaction_id = 'transaction_id8'

result = transactions_controller.get_transaction(transaction_id)
```

