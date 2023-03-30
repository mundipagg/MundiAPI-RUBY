# Orders

```ruby
orders_controller = client.orders
```

## Class Name

`OrdersController`

## Methods

* [Update Order Status](../../doc/controllers/orders.md#update-order-status)
* [Delete All Order Items](../../doc/controllers/orders.md#delete-all-order-items)
* [Update Order Metadata](../../doc/controllers/orders.md#update-order-metadata)
* [Get Orders](../../doc/controllers/orders.md#get-orders)
* [Create Order Item](../../doc/controllers/orders.md#create-order-item)
* [Delete Order Item](../../doc/controllers/orders.md#delete-order-item)
* [Get Order](../../doc/controllers/orders.md#get-order)
* [Create Order](../../doc/controllers/orders.md#create-order)
* [Get Order Item](../../doc/controllers/orders.md#get-order-item)
* [Update Order Item](../../doc/controllers/orders.md#update-order-item)


# Update Order Status

```ruby
def update_order_status(id,
                        request,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Order Id |
| `request` | [`UpdateOrderStatusRequest`](../../doc/models/update-order-status-request.md) | Body, Required | Update Order Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
id = 'id0'
request = UpdateOrderStatusRequest.new
request.status = 'status8'

result = orders_controller.update_order_status(id, request, )
```


# Delete All Order Items

```ruby
def delete_all_order_items(order_id,
                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'orderId2'

result = orders_controller.delete_all_order_items(order_id, )
```


# Update Order Metadata

Updates the metadata from an order

```ruby
def update_order_metadata(order_id,
                          request,
                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | The order id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the order metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = orders_controller.update_order_metadata(order_id, request, )
```


# Get Orders

Gets all orders

```ruby
def get_orders(page: nil,
               size: nil,
               code: nil,
               status: nil,
               created_since: nil,
               created_until: nil,
               customer_id: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for order's code |
| `status` | `String` | Query, Optional | Filter for order's status |
| `created_since` | `DateTime` | Query, Optional | Filter for order's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for order's creation date end range |
| `customer_id` | `String` | Query, Optional | Filter for order's customer id |

## Response Type

[`ListOrderResponse`](../../doc/models/list-order-response.md)

## Example Usage

```ruby
result = orders_controller.get_orders()
```


# Create Order Item

```ruby
def create_order_item(order_id,
                      request,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `request` | [`CreateOrderItemRequest`](../../doc/models/create-order-item-request.md) | Body, Required | Order Item Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'
request = CreateOrderItemRequest.new
request.amount = 242
request.description = 'description6'
request.quantity = 100
request.category = 'category4'

result = orders_controller.create_order_item(order_id, request, )
```


# Delete Order Item

```ruby
def delete_order_item(order_id,
                      item_id,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'
item_id = 'itemId8'

result = orders_controller.delete_order_item(order_id, item_id, )
```


# Get Order

Gets an order

```ruby
def get_order(order_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order id |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
order_id = 'order_id6'

result = orders_controller.get_order(order_id)
```


# Create Order

Creates a new Order

```ruby
def create_order(body,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateOrderRequest`](../../doc/models/create-order-request.md) | Body, Required | Request for creating an order |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderResponse`](../../doc/models/get-order-response.md)

## Example Usage

```ruby
body = CreateOrderRequest.new
body.items = []


body.items[0] = CreateOrderItemRequest.new
body.items[0].amount = 101
body.items[0].description = 'description3'
body.items[0].quantity = 215
body.items[0].category = 'category1'

body.items[1] = CreateOrderItemRequest.new
body.items[1].amount = 102
body.items[1].description = 'description4'
body.items[1].quantity = 216
body.items[1].category = 'category2'

body.items[2] = CreateOrderItemRequest.new
body.items[2].amount = 103
body.items[2].description = 'description5'
body.items[2].quantity = 217
body.items[2].category = 'category3'

body.customer = CreateCustomerRequest.new
body.customer.name = '{
    "name": "Tony Stark"
}'
body.customer.email = 'email2'
body.customer.document = 'document2'
body.customer.type = 'type6'
body.customer.address = CreateAddressRequest.new
body.customer.address.street = 'street0'
body.customer.address.number = 'number8'
body.customer.address.zip_code = 'zip_code4'
body.customer.address.neighborhood = 'neighborhood6'
body.customer.address.city = 'city0'
body.customer.address.state = 'state6'
body.customer.address.country = 'country4'
body.customer.address.complement = 'complement6'
body.customer.address.metadata = {'key0' => 'metadata7', 'key1' => 'metadata6' } 
body.customer.address.line_1 = 'line_16'
body.customer.address.line_2 = 'line_28'
body.customer.metadata = {'key0' => 'metadata9', 'key1' => 'metadata0' } 
body.customer.phones = CreatePhonesRequest.new
body.customer.code = 'code2'
body.payments = []


body.payments[0] = CreatePaymentRequest.new
body.payments[0].payment_method = 'payment_method0'
body.payments[0].private_label = CreatePrivateLabelPaymentRequest.new

body.payments[1] = CreatePaymentRequest.new
body.payments[1].payment_method = 'payment_method9'
body.payments[1].private_label = CreatePrivateLabelPaymentRequest.new

body.code = 'code4'
body.customer_id = 'customer_id4'
body.metadata = {'key0' => 'metadata7', 'key1' => 'metadata8' } 
body.closed = true

result = orders_controller.create_order(body, )
```


# Get Order Item

```ruby
def get_order_item(order_id,
                   item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'
item_id = 'itemId8'

result = orders_controller.get_order_item(order_id, item_id)
```


# Update Order Item

```ruby
def update_order_item(order_id,
                      item_id,
                      request,
                      idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Template, Required | Order Id |
| `item_id` | `String` | Template, Required | Item Id |
| `request` | [`UpdateOrderItemRequest`](../../doc/models/update-order-item-request.md) | Body, Required | Item Model |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetOrderItemResponse`](../../doc/models/get-order-item-response.md)

## Example Usage

```ruby
order_id = 'orderId2'
item_id = 'itemId8'
request = UpdateOrderItemRequest.new
request.amount = 242
request.description = 'description6'
request.quantity = 100
request.category = 'category4'

result = orders_controller.update_order_item(order_id, item_id, request, )
```

