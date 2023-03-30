
# Create Order Request

Request for creating an order

## Structure

`CreateOrderRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array<CreateOrderItemRequest>`](../../doc/models/create-order-item-request.md) | Required | Items |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Required | Customer |
| `payments` | [`Array<CreatePaymentRequest>`](../../doc/models/create-payment-request.md) | Required | Payment data |
| `code` | `String` | Required | The order code |
| `customer_id` | `String` | Required | The customer id |
| `shipping` | [`CreateShippingRequest`](../../doc/models/create-shipping-request.md) | Optional | Shipping data |
| `metadata` | `Hash of String` | Required | Metadata |
| `antifraud_enabled` | `TrueClass\|FalseClass` | Optional | Defines whether the order will go through anti-fraud |
| `ip` | `String` | Optional | Ip address |
| `session_id` | `String` | Optional | Session id |
| `location` | [`CreateLocationRequest`](../../doc/models/create-location-request.md) | Optional | Request's location |
| `device` | [`CreateDeviceRequest`](../../doc/models/create-device-request.md) | Optional | Device's informations |
| `closed` | `TrueClass\|FalseClass` | Required | **Default**: `true` |
| `currency` | `String` | Optional | Currency |
| `antifraud` | [`CreateAntifraudRequest`](../../doc/models/create-antifraud-request.md) | Optional | - |
| `submerchant` | [`CreateSubMerchantRequest`](../../doc/models/create-sub-merchant-request.md) | Optional | SubMerchant |

## Example (as JSON)

```json
{
  "items": null,
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
  "payments": null,
  "code": null,
  "customer_id": null,
  "metadata": null,
  "closed": true
}
```

