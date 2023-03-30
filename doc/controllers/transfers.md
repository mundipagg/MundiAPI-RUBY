# Transfers

```ruby
transfers_controller = client.transfers
```

## Class Name

`TransfersController`

## Methods

* [Create Transfer](../../doc/controllers/transfers.md#create-transfer)
* [Get Transfer by Id](../../doc/controllers/transfers.md#get-transfer-by-id)
* [Get Transfers](../../doc/controllers/transfers.md#get-transfers)


# Create Transfer

```ruby
def create_transfer(request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateTransfer`](../../doc/models/create-transfer.md) | Body, Required | - |

## Response Type

[`GetTransfer`](../../doc/models/get-transfer.md)

## Example Usage

```ruby
request = CreateTransfer.new
request.amount = 242
request.source_id = 'source_id0'
request.target_id = 'target_id6'

result = transfers_controller.create_transfer(request)
```


# Get Transfer by Id

```ruby
def get_transfer_by_id(transfer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_id` | `String` | Template, Required | - |

## Response Type

[`GetTransfer`](../../doc/models/get-transfer.md)

## Example Usage

```ruby
transfer_id = 'transfer_id6'

result = transfers_controller.get_transfer_by_id(transfer_id)
```


# Get Transfers

Gets all transfers

```ruby
def get_transfers
```

## Response Type

[`ListTransfers`](../../doc/models/list-transfers.md)

## Example Usage

```ruby
result = transfers_controller.get_transfers()
```

