# Subscriptions

```ruby
subscriptions_controller = client.subscriptions
```

## Class Name

`SubscriptionsController`

## Methods

* [Create Discount](../../doc/controllers/subscriptions.md#create-discount)
* [Get Subscription Item](../../doc/controllers/subscriptions.md#get-subscription-item)
* [Delete Usage](../../doc/controllers/subscriptions.md#delete-usage)
* [Cancel Subscription](../../doc/controllers/subscriptions.md#cancel-subscription)
* [Delete Increment](../../doc/controllers/subscriptions.md#delete-increment)
* [Get Subscription Cycle by Id](../../doc/controllers/subscriptions.md#get-subscription-cycle-by-id)
* [Update Subscription Start At](../../doc/controllers/subscriptions.md#update-subscription-start-at)
* [Update Subscription Payment Method](../../doc/controllers/subscriptions.md#update-subscription-payment-method)
* [Update Current Cycle Status](../../doc/controllers/subscriptions.md#update-current-cycle-status)
* [Create Subscription](../../doc/controllers/subscriptions.md#create-subscription)
* [Get Usages Details](../../doc/controllers/subscriptions.md#get-usages-details)
* [Renew Subscription](../../doc/controllers/subscriptions.md#renew-subscription)
* [Update Subscription Item](../../doc/controllers/subscriptions.md#update-subscription-item)
* [Create an Usage](../../doc/controllers/subscriptions.md#create-an-usage)
* [Get Increment by Id](../../doc/controllers/subscriptions.md#get-increment-by-id)
* [Delete Discount](../../doc/controllers/subscriptions.md#delete-discount)
* [Get Increments](../../doc/controllers/subscriptions.md#get-increments)
* [Create Usage](../../doc/controllers/subscriptions.md#create-usage)
* [Create Subscription Item](../../doc/controllers/subscriptions.md#create-subscription-item)
* [Get Usages](../../doc/controllers/subscriptions.md#get-usages)
* [Update Subscription Billing Date](../../doc/controllers/subscriptions.md#update-subscription-billing-date)
* [Update Latest Period End At](../../doc/controllers/subscriptions.md#update-latest-period-end-at)
* [Get Subscription Cycles](../../doc/controllers/subscriptions.md#get-subscription-cycles)
* [Get Subscriptions](../../doc/controllers/subscriptions.md#get-subscriptions)
* [Get Discount by Id](../../doc/controllers/subscriptions.md#get-discount-by-id)
* [Get Subscription Items](../../doc/controllers/subscriptions.md#get-subscription-items)
* [Update Subscription Minium Price](../../doc/controllers/subscriptions.md#update-subscription-minium-price)
* [Get Subscription](../../doc/controllers/subscriptions.md#get-subscription)
* [Update Subscription Affiliation Id](../../doc/controllers/subscriptions.md#update-subscription-affiliation-id)
* [Delete Subscription Item](../../doc/controllers/subscriptions.md#delete-subscription-item)
* [Update Subscription Card](../../doc/controllers/subscriptions.md#update-subscription-card)
* [Update Subscription Metadata](../../doc/controllers/subscriptions.md#update-subscription-metadata)
* [Update Subscription Due Days](../../doc/controllers/subscriptions.md#update-subscription-due-days)
* [Get Discounts](../../doc/controllers/subscriptions.md#get-discounts)
* [Create Increment](../../doc/controllers/subscriptions.md#create-increment)
* [Get Usage Report](../../doc/controllers/subscriptions.md#get-usage-report)
* [Update Split Subscription](../../doc/controllers/subscriptions.md#update-split-subscription)


# Create Discount

Creates a discount

```ruby
def create_discount(subscription_id,
                    request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateDiscountRequest`](../../doc/models/create-discount-request.md) | Body, Required | Request for creating a discount |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = CreateDiscountRequest.new
request.value = 185.28
request.discount_type = 'discount_type4'
request.item_id = 'item_id6'

result = subscriptions_controller.create_discount(subscription_id, request, )
```


# Get Subscription Item

Get Subscription Item

```ruby
def get_subscription_item(subscription_id,
                          item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'

result = subscriptions_controller.get_subscription_item(subscription_id, item_id)
```


# Delete Usage

Deletes a usage

```ruby
def delete_usage(subscription_id,
                 item_id,
                 usage_id,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `item_id` | `String` | Template, Required | The subscription item id |
| `usage_id` | `String` | Template, Required | The usage id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'
usage_id = 'usage_id0'

result = subscriptions_controller.delete_usage(subscription_id, item_id, usage_id, )
```


# Cancel Subscription

Cancels a subscription

```ruby
def cancel_subscription(subscription_id,
                        request: nil,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateCancelSubscriptionRequest`](../../doc/models/create-cancel-subscription-request.md) | Body, Optional | Request for cancelling a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = CreateCancelSubscriptionRequest.new
request.cancel_pending_invoices = true

result = subscriptions_controller.cancel_subscription(subscription_id, request: request, )
```


# Delete Increment

Deletes a increment

```ruby
def delete_increment(subscription_id,
                     increment_id,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `increment_id` | `String` | Template, Required | Increment id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
increment_id = 'increment_id8'

result = subscriptions_controller.delete_increment(subscription_id, increment_id, )
```


# Get Subscription Cycle by Id

```ruby
def get_subscription_cycle_by_id(subscription_id,
                                 cycle_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `cycle_id` | `String` | Template, Required | - |

## Response Type

[`GetPeriodResponse`](../../doc/models/get-period-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
cycle_id = 'cycleId0'

result = subscriptions_controller.get_subscription_cycle_by_id(subscription_id, cycle_id)
```


# Update Subscription Start At

Updates the start at date from a subscription

```ruby
def update_subscription_start_at(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateSubscriptionStartAtRequest`](../../doc/models/update-subscription-start-at-request.md) | Body, Required | Request for updating the subscription start date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionStartAtRequest.new
request.start_at = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = subscriptions_controller.update_subscription_start_at(subscription_id, request, )
```


# Update Subscription Payment Method

Updates the payment method from a subscription

```ruby
def update_subscription_payment_method(subscription_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`UpdateSubscriptionPaymentMethodRequest`](../../doc/models/update-subscription-payment-method-request.md) | Body, Required | Request for updating the paymentmethod from a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionPaymentMethodRequest.new
request.payment_method = 'payment_method4'
request.card_id = 'card_id2'
request.card = CreateCardRequest.new
request.card.number = 'number2'
request.card.holder_name = 'holder_name6'
request.card.exp_month = 80
request.card.exp_year = 216
request.card.cvv = 'cvv8'
request.card.billing_address = CreateAddressRequest.new
request.card.billing_address.street = 'street2'
request.card.billing_address.number = 'number0'
request.card.billing_address.zip_code = 'zip_code6'
request.card.billing_address.neighborhood = 'neighborhood8'
request.card.billing_address.city = 'city8'
request.card.billing_address.state = 'state2'
request.card.billing_address.country = 'country6'
request.card.billing_address.complement = 'complement2'
request.card.billing_address.metadata = {'key0' => 'metadata1' } 
request.card.billing_address.line_1 = 'line_14'
request.card.billing_address.line_2 = 'line_20'
request.card.brand = 'brand4'
request.card.billing_address_id = 'billing_address_id6'
request.card.metadata = {'key0' => 'metadata3', 'key1' => 'metadata4', 'key2' => 'metadata5' } 
request.card.type = 'credit'
request.card.options = CreateCardOptionsRequest.new
request.card.options.verify_card = false
request.card.private_label = false
request.card.label = 'label0'

result = subscriptions_controller.update_subscription_payment_method(subscription_id, request, )
```


# Update Current Cycle Status

```ruby
def update_current_cycle_status(subscription_id,
                                request,
                                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateCurrentCycleStatusRequest`](../../doc/models/update-current-cycle-status-request.md) | Body, Required | Request for updating the end date of the subscription current status |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

`void`

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateCurrentCycleStatusRequest.new
request.status = 'status8'

result = subscriptions_controller.update_current_cycle_status(subscription_id, request, )
```


# Create Subscription

Creates a new subscription

```ruby
def create_subscription(body,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreateSubscriptionRequest`](../../doc/models/create-subscription-request.md) | Body, Required | Request for creating a subscription |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
body = CreateSubscriptionRequest.new
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
body.card = CreateCardRequest.new
body.card.number = 'number2'
body.card.holder_name = 'holder_name6'
body.card.exp_month = 60
body.card.exp_year = 236
body.card.cvv = 'cvv8'
body.card.billing_address = CreateAddressRequest.new
body.card.billing_address.street = 'street8'
body.card.billing_address.number = 'number4'
body.card.billing_address.zip_code = 'zip_code2'
body.card.billing_address.neighborhood = 'neighborhood4'
body.card.billing_address.city = 'city2'
body.card.billing_address.state = 'state6'
body.card.billing_address.country = 'country2'
body.card.billing_address.complement = 'complement6'
body.card.billing_address.metadata = {'key0' => 'metadata5', 'key1' => 'metadata6', 'key2' => 'metadata7' } 
body.card.billing_address.line_1 = 'line_18'
body.card.billing_address.line_2 = 'line_26'
body.card.brand = 'brand4'
body.card.billing_address_id = 'billing_address_id6'
body.card.metadata = {'key0' => 'metadata3', 'key1' => 'metadata4' } 
body.card.type = 'credit'
body.card.options = CreateCardOptionsRequest.new
body.card.options.verify_card = false
body.card.private_label = false
body.card.label = 'label0'
body.code = 'code4'
body.payment_method = 'payment_method4'
body.billing_type = 'billing_type0'
body.statement_descriptor = 'statement_descriptor6'
body.description = 'description4'
body.currency = 'currency6'
body.interval = 'interval6'
body.interval_count = 170
body.pricing_scheme = CreatePricingSchemeRequest.new
body.pricing_scheme.scheme_type = 'scheme_type2'
body.pricing_scheme.price_brackets = []


body.pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.pricing_scheme.price_brackets[0].start_quantity = 31
body.pricing_scheme.price_brackets[0].price = 225

body.pricing_scheme.price_brackets[1] = CreatePriceBracketRequest.new
body.pricing_scheme.price_brackets[1].start_quantity = 32
body.pricing_scheme.price_brackets[1].price = 226

body.items = []


body.items[0] = CreateSubscriptionItemRequest.new
body.items[0].description = 'description3'
body.items[0].pricing_scheme = CreatePricingSchemeRequest.new
body.items[0].pricing_scheme.scheme_type = 'scheme_type5'
body.items[0].pricing_scheme.price_brackets = []


body.items[0].pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.items[0].pricing_scheme.price_brackets[0].start_quantity = 228
body.items[0].pricing_scheme.price_brackets[0].price = 90

body.items[0].pricing_scheme.price_brackets[1] = CreatePriceBracketRequest.new
body.items[0].pricing_scheme.price_brackets[1].start_quantity = 229
body.items[0].pricing_scheme.price_brackets[1].price = 89

body.items[0].id = 'id3'
body.items[0].plan_item_id = 'plan_item_id3'
body.items[0].discounts = []


body.items[0].discounts[0] = CreateDiscountRequest.new
body.items[0].discounts[0].value = 65.46
body.items[0].discounts[0].discount_type = 'discount_type2'
body.items[0].discounts[0].item_id = 'item_id4'

body.items[0].name = 'name3'

body.items[1] = CreateSubscriptionItemRequest.new
body.items[1].description = 'description4'
body.items[1].pricing_scheme = CreatePricingSchemeRequest.new
body.items[1].pricing_scheme.scheme_type = 'scheme_type4'
body.items[1].pricing_scheme.price_brackets = []


body.items[1].pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.items[1].pricing_scheme.price_brackets[0].start_quantity = 227
body.items[1].pricing_scheme.price_brackets[0].price = 91

body.items[1].id = 'id4'
body.items[1].plan_item_id = 'plan_item_id4'
body.items[1].discounts = []


body.items[1].discounts[0] = CreateDiscountRequest.new
body.items[1].discounts[0].value = 65.47
body.items[1].discounts[0].discount_type = 'discount_type3'
body.items[1].discounts[0].item_id = 'item_id5'

body.items[1].discounts[1] = CreateDiscountRequest.new
body.items[1].discounts[1].value = 65.48
body.items[1].discounts[1].discount_type = 'discount_type4'
body.items[1].discounts[1].item_id = 'item_id6'

body.items[1].name = 'name4'

body.items[2] = CreateSubscriptionItemRequest.new
body.items[2].description = 'description5'
body.items[2].pricing_scheme = CreatePricingSchemeRequest.new
body.items[2].pricing_scheme.scheme_type = 'scheme_type3'
body.items[2].pricing_scheme.price_brackets = []


body.items[2].pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.items[2].pricing_scheme.price_brackets[0].start_quantity = 226
body.items[2].pricing_scheme.price_brackets[0].price = 92

body.items[2].pricing_scheme.price_brackets[1] = CreatePriceBracketRequest.new
body.items[2].pricing_scheme.price_brackets[1].start_quantity = 227
body.items[2].pricing_scheme.price_brackets[1].price = 91

body.items[2].pricing_scheme.price_brackets[2] = CreatePriceBracketRequest.new
body.items[2].pricing_scheme.price_brackets[2].start_quantity = 228
body.items[2].pricing_scheme.price_brackets[2].price = 90

body.items[2].id = 'id5'
body.items[2].plan_item_id = 'plan_item_id5'
body.items[2].discounts = []


body.items[2].discounts[0] = CreateDiscountRequest.new
body.items[2].discounts[0].value = 65.48
body.items[2].discounts[0].discount_type = 'discount_type4'
body.items[2].discounts[0].item_id = 'item_id6'

body.items[2].discounts[1] = CreateDiscountRequest.new
body.items[2].discounts[1].value = 65.49
body.items[2].discounts[1].discount_type = 'discount_type5'
body.items[2].discounts[1].item_id = 'item_id7'

body.items[2].discounts[2] = CreateDiscountRequest.new
body.items[2].discounts[2].value = 65.5
body.items[2].discounts[2].discount_type = 'discount_type6'
body.items[2].discounts[2].item_id = 'item_id8'

body.items[2].name = 'name5'

body.shipping = CreateShippingRequest.new
body.shipping.amount = 140
body.shipping.description = 'description0'
body.shipping.recipient_name = 'recipient_name8'
body.shipping.recipient_phone = 'recipient_phone2'
body.shipping.address_id = 'address_id0'
body.shipping.address = CreateAddressRequest.new
body.shipping.address.street = 'street6'
body.shipping.address.number = 'number4'
body.shipping.address.zip_code = 'zip_code0'
body.shipping.address.neighborhood = 'neighborhood2'
body.shipping.address.city = 'city6'
body.shipping.address.state = 'state2'
body.shipping.address.country = 'country0'
body.shipping.address.complement = 'complement2'
body.shipping.address.metadata = {'key0' => 'metadata3', 'key1' => 'metadata2' } 
body.shipping.address.line_1 = 'line_10'
body.shipping.address.line_2 = 'line_24'
body.shipping.type = 'type0'
body.discounts = []


body.discounts[0] = CreateDiscountRequest.new
body.discounts[0].value = 95.59
body.discounts[0].discount_type = 'discount_type5'
body.discounts[0].item_id = 'item_id7'

body.metadata = {'key0' => 'metadata7', 'key1' => 'metadata8' } 
body.setup = CreateSetupRequest.new
body.setup.amount = 150
body.setup.description = 'description0'
body.setup.payment = CreatePaymentRequest.new
body.setup.payment.payment_method = 'payment_method4'
body.setup.payment.private_label = CreatePrivateLabelPaymentRequest.new
body.increments = []


body.increments[0] = CreateIncrementRequest.new
body.increments[0].value = 38.83
body.increments[0].increment_type = 'increment_type3'
body.increments[0].item_id = 'item_id9'

body.increments[1] = CreateIncrementRequest.new
body.increments[1].value = 38.84
body.increments[1].increment_type = 'increment_type4'
body.increments[1].item_id = 'item_id8'

body.increments[2] = CreateIncrementRequest.new
body.increments[2].value = 38.85
body.increments[2].increment_type = 'increment_type5'
body.increments[2].item_id = 'item_id7'


result = subscriptions_controller.create_subscription(body, )
```


# Get Usages Details

```ruby
def get_usages_details(subscription_id,
                       cycle_id: nil,
                       size: nil,
                       page: nil,
                       item_id: nil,
                       group: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Identifier |
| `cycle_id` | `String` | Query, Optional | Cycle id |
| `size` | `Integer` | Query, Optional | Page size |
| `page` | `Integer` | Query, Optional | Page number |
| `item_id` | `String` | Query, Optional | Identificador do item |
| `group` | `String` | Query, Optional | identificador da loja (account) de cada item |

## Response Type

[`GetUsagesDetailsResponse`](../../doc/models/get-usages-details-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_usages_details(subscription_id, )
```


# Renew Subscription

```ruby
def renew_subscription(subscription_id,
                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPeriodResponse`](../../doc/models/get-period-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.renew_subscription(subscription_id, )
```


# Update Subscription Item

Updates a subscription item

```ruby
def update_subscription_item(subscription_id,
                             item_id,
                             body,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |
| `body` | [`UpdateSubscriptionItemRequest`](../../doc/models/update-subscription-item-request.md) | Body, Required | Request for updating a subscription item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'
body = UpdateSubscriptionItemRequest.new
body.description = 'description4'
body.status = 'status2'
body.pricing_scheme = UpdatePricingSchemeRequest.new
body.pricing_scheme.scheme_type = 'scheme_type2'
body.pricing_scheme.price_brackets = []


body.pricing_scheme.price_brackets[0] = UpdatePriceBracketRequest.new
body.pricing_scheme.price_brackets[0].start_quantity = 31
body.pricing_scheme.price_brackets[0].price = 225

body.pricing_scheme.price_brackets[1] = UpdatePriceBracketRequest.new
body.pricing_scheme.price_brackets[1].start_quantity = 32
body.pricing_scheme.price_brackets[1].price = 226

body.name = 'name6'

result = subscriptions_controller.update_subscription_item(subscription_id, item_id, body, )
```


# Create an Usage

Create Usage

```ruby
def create_an_usage(subscription_id,
                    item_id,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `item_id` | `String` | Template, Required | Item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'

result = subscriptions_controller.create_an_usage(subscription_id, item_id, )
```


# Get Increment by Id

```ruby
def get_increment_by_id(subscription_id,
                        increment_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription Id |
| `increment_id` | `String` | Template, Required | The increment Id |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
increment_id = 'increment_id8'

result = subscriptions_controller.get_increment_by_id(subscription_id, increment_id)
```


# Delete Discount

Deletes a discount

```ruby
def delete_discount(subscription_id,
                    discount_id,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `discount_id` | `String` | Template, Required | Discount Id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
discount_id = 'discount_id8'

result = subscriptions_controller.delete_discount(subscription_id, discount_id, )
```


# Get Increments

```ruby
def get_increments(subscription_id,
                   page: nil,
                   size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListIncrementsResponse`](../../doc/models/list-increments-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_increments(subscription_id, )
```


# Create Usage

Creates a usage

```ruby
def create_usage(subscription_id,
                 item_id,
                 body,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `item_id` | `String` | Template, Required | Item id |
| `body` | [`CreateUsageRequest`](../../doc/models/create-usage-request.md) | Body, Required | Request for creating a usage |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetUsageResponse`](../../doc/models/get-usage-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'
body = CreateUsageRequest.new
body.quantity = 156
body.description = 'description4'
body.used_at = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = subscriptions_controller.create_usage(subscription_id, item_id, body, )
```


# Create Subscription Item

Creates a new Subscription item

```ruby
def create_subscription_item(subscription_id,
                             request,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateSubscriptionItemRequest`](../../doc/models/create-subscription-item-request.md) | Body, Required | Request for creating a subscription item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = CreateSubscriptionItemRequest.new
request.description = 'description6'
request.pricing_scheme = CreatePricingSchemeRequest.new
request.pricing_scheme.scheme_type = 'scheme_type2'
request.pricing_scheme.price_brackets = []


request.pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
request.pricing_scheme.price_brackets[0].start_quantity = 87
request.pricing_scheme.price_brackets[0].price = 231

request.id = 'id6'
request.plan_item_id = 'plan_item_id6'
request.discounts = []


request.discounts[0] = CreateDiscountRequest.new
request.discounts[0].value = 199.99
request.discounts[0].discount_type = 'discount_type5'
request.discounts[0].item_id = 'item_id7'

request.discounts[1] = CreateDiscountRequest.new
request.discounts[1].value = 200
request.discounts[1].discount_type = 'discount_type6'
request.discounts[1].item_id = 'item_id8'

request.name = 'name6'

result = subscriptions_controller.create_subscription_item(subscription_id, request, )
```


# Get Usages

Lists all usages from a subscription item

```ruby
def get_usages(subscription_id,
               item_id,
               page: nil,
               size: nil,
               code: nil,
               group: nil,
               used_since: nil,
               used_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `item_id` | `String` | Template, Required | The subscription item id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Identification code in the client system |
| `group` | `String` | Query, Optional | Identification group in the client system |
| `used_since` | `DateTime` | Query, Optional | - |
| `used_until` | `DateTime` | Query, Optional | - |

## Response Type

[`ListUsagesResponse`](../../doc/models/list-usages-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
item_id = 'item_id0'

result = subscriptions_controller.get_usages(subscription_id, item_id, )
```


# Update Subscription Billing Date

Updates the billing date from a subscription

```ruby
def update_subscription_billing_date(subscription_id,
                                     request,
                                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateSubscriptionBillingDateRequest`](../../doc/models/update-subscription-billing-date-request.md) | Body, Required | Request for updating the subscription billing date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionBillingDateRequest.new
request.next_billing_at = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = subscriptions_controller.update_subscription_billing_date(subscription_id, request, )
```


# Update Latest Period End At

```ruby
def update_latest_period_end_at(subscription_id,
                                request,
                                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `request` | [`UpdateCurrentCycleEndDateRequest`](../../doc/models/update-current-cycle-end-date-request.md) | Body, Required | Request for updating the end date of the current signature cycle |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateCurrentCycleEndDateRequest.new

result = subscriptions_controller.update_latest_period_end_at(subscription_id, request, )
```


# Get Subscription Cycles

```ruby
def get_subscription_cycles(subscription_id,
                            page,
                            size)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `page` | `String` | Query, Required | Page number |
| `size` | `String` | Query, Required | Page size |

## Response Type

[`ListCyclesResponse`](../../doc/models/list-cycles-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
page = 'page8'
size = 'size0'

result = subscriptions_controller.get_subscription_cycles(subscription_id, page, size)
```


# Get Subscriptions

Gets all subscriptions

```ruby
def get_subscriptions(page: nil,
                      size: nil,
                      code: nil,
                      billing_type: nil,
                      customer_id: nil,
                      plan_id: nil,
                      card_id: nil,
                      status: nil,
                      next_billing_since: nil,
                      next_billing_until: nil,
                      created_since: nil,
                      created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for subscription's code |
| `billing_type` | `String` | Query, Optional | Filter for subscription's billing type |
| `customer_id` | `String` | Query, Optional | Filter for subscription's customer id |
| `plan_id` | `String` | Query, Optional | Filter for subscription's plan id |
| `card_id` | `String` | Query, Optional | Filter for subscription's card id |
| `status` | `String` | Query, Optional | Filter for subscription's status |
| `next_billing_since` | `DateTime` | Query, Optional | Filter for subscription's next billing date start range |
| `next_billing_until` | `DateTime` | Query, Optional | Filter for subscription's next billing date end range |
| `created_since` | `DateTime` | Query, Optional | Filter for subscription's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for subscriptions creation date end range |

## Response Type

[`ListSubscriptionsResponse`](../../doc/models/list-subscriptions-response.md)

## Example Usage

```ruby
result = subscriptions_controller.get_subscriptions()
```


# Get Discount by Id

```ruby
def get_discount_by_id(subscription_id,
                       discount_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `discount_id` | `String` | Template, Required | - |

## Response Type

[`GetDiscountResponse`](../../doc/models/get-discount-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
discount_id = 'discountId0'

result = subscriptions_controller.get_discount_by_id(subscription_id, discount_id)
```


# Get Subscription Items

Get Subscription Items

```ruby
def get_subscription_items(subscription_id,
                           page: nil,
                           size: nil,
                           name: nil,
                           code: nil,
                           status: nil,
                           description: nil,
                           created_since: nil,
                           created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `name` | `String` | Query, Optional | The item name |
| `code` | `String` | Query, Optional | Identification code in the client system |
| `status` | `String` | Query, Optional | The item statis |
| `description` | `String` | Query, Optional | The item description |
| `created_since` | `String` | Query, Optional | Filter for item's creation date start range |
| `created_until` | `String` | Query, Optional | Filter for item's creation date end range |

## Response Type

[`ListSubscriptionItemsResponse`](../../doc/models/list-subscription-items-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_subscription_items(subscription_id, )
```


# Update Subscription Minium Price

Atualização do valor mínimo da assinatura

```ruby
def update_subscription_minium_price(subscription_id,
                                     request,
                                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateSubscriptionMinimumPriceRequest`](../../doc/models/update-subscription-minimum-price-request.md) | Body, Required | Request da requisição com o valor mínimo que será configurado |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionMinimumPriceRequest.new

result = subscriptions_controller.update_subscription_minium_price(subscription_id, request, )
```


# Get Subscription

Gets a subscription

```ruby
def get_subscription(subscription_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = subscriptions_controller.get_subscription(subscription_id)
```


# Update Subscription Affiliation Id

```ruby
def update_subscription_affiliation_id(subscription_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | - |
| `request` | [`UpdateSubscriptionAffiliationIdRequest`](../../doc/models/update-subscription-affiliation-id-request.md) | Body, Required | Request for updating a subscription affiliation id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionAffiliationIdRequest.new
request.gateway_affiliation_id = 'gateway_affiliation_id2'

result = subscriptions_controller.update_subscription_affiliation_id(subscription_id, request, )
```


# Delete Subscription Item

Deletes a subscription item

```ruby
def delete_subscription_item(subscription_id,
                             subscription_item_id,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `subscription_item_id` | `String` | Template, Required | Subscription item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
subscription_item_id = 'subscription_item_id4'

result = subscriptions_controller.delete_subscription_item(subscription_id, subscription_item_id, )
```


# Update Subscription Card

Updates the credit card from a subscription

```ruby
def update_subscription_card(subscription_id,
                             request,
                             idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`UpdateSubscriptionCardRequest`](../../doc/models/update-subscription-card-request.md) | Body, Required | Request for updating a card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionCardRequest.new
request.card = CreateCardRequest.new
request.card.number = 'number2'
request.card.holder_name = 'holder_name6'
request.card.exp_month = 80
request.card.exp_year = 216
request.card.cvv = 'cvv8'
request.card.billing_address = CreateAddressRequest.new
request.card.billing_address.street = 'street2'
request.card.billing_address.number = 'number0'
request.card.billing_address.zip_code = 'zip_code6'
request.card.billing_address.neighborhood = 'neighborhood8'
request.card.billing_address.city = 'city8'
request.card.billing_address.state = 'state2'
request.card.billing_address.country = 'country6'
request.card.billing_address.complement = 'complement2'
request.card.billing_address.metadata = {'key0' => 'metadata1' } 
request.card.billing_address.line_1 = 'line_14'
request.card.billing_address.line_2 = 'line_20'
request.card.brand = 'brand4'
request.card.billing_address_id = 'billing_address_id6'
request.card.metadata = {'key0' => 'metadata3', 'key1' => 'metadata4', 'key2' => 'metadata5' } 
request.card.type = 'credit'
request.card.options = CreateCardOptionsRequest.new
request.card.options.verify_card = false
request.card.private_label = false
request.card.label = 'label0'
request.card_id = 'card_id2'

result = subscriptions_controller.update_subscription_card(subscription_id, request, )
```


# Update Subscription Metadata

Updates the metadata from a subscription

```ruby
def update_subscription_metadata(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the subscrption metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = subscriptions_controller.update_subscription_metadata(subscription_id, request, )
```


# Update Subscription Due Days

Updates the boleto due days from a subscription

```ruby
def update_subscription_due_days(subscription_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `request` | [`UpdateSubscriptionDueDaysRequest`](../../doc/models/update-subscription-due-days-request.md) | Body, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = UpdateSubscriptionDueDaysRequest.new
request.boleto_due_days = 226

result = subscriptions_controller.update_subscription_due_days(subscription_id, request, )
```


# Get Discounts

```ruby
def get_discounts(subscription_id,
                  page,
                  size)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription id |
| `page` | `Integer` | Query, Required | Page number |
| `size` | `Integer` | Query, Required | Page size |

## Response Type

[`ListDiscountsResponse`](../../doc/models/list-discounts-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
page = 30
size = 18

result = subscriptions_controller.get_discounts(subscription_id, page, size)
```


# Create Increment

Creates a increment

```ruby
def create_increment(subscription_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription id |
| `request` | [`CreateIncrementRequest`](../../doc/models/create-increment-request.md) | Body, Required | Request for creating a increment |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetIncrementResponse`](../../doc/models/get-increment-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
request = CreateIncrementRequest.new
request.value = 185.28
request.increment_type = 'increment_type8'
request.item_id = 'item_id6'

result = subscriptions_controller.create_increment(subscription_id, request, )
```


# Get Usage Report

```ruby
def get_usage_report(subscription_id,
                     period_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | The subscription Id |
| `period_id` | `String` | Template, Required | The period Id |

## Response Type

[`GetUsageReportResponse`](../../doc/models/get-usage-report-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
period_id = 'period_id0'

result = subscriptions_controller.get_usage_report(subscription_id, period_id)
```


# Update Split Subscription

```ruby
def update_split_subscription(id,
                              request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Subscription's id |
| `request` | [`UpdateSubscriptionSplitRequest`](../../doc/models/update-subscription-split-request.md) | Body, Required | - |

## Response Type

[`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md)

## Example Usage

```ruby
id = 'id0'
request = UpdateSubscriptionSplitRequest.new
request.enabled = false
request.rules = []


request.rules[0] = CreateSplitRequest.new
request.rules[0].type = 'type6'
request.rules[0].amount = 222
request.rules[0].recipient_id = 'recipient_id6'

request.rules[1] = CreateSplitRequest.new
request.rules[1].type = 'type5'
request.rules[1].amount = 223
request.rules[1].recipient_id = 'recipient_id5'

request.rules[2] = CreateSplitRequest.new
request.rules[2].type = 'type4'
request.rules[2].amount = 224
request.rules[2].recipient_id = 'recipient_id4'


result = subscriptions_controller.update_split_subscription(id, request)
```

