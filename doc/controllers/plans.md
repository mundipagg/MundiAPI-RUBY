# Plans

```ruby
plans_controller = client.plans
```

## Class Name

`PlansController`

## Methods

* [Update Plan Item](../../doc/controllers/plans.md#update-plan-item)
* [Create Plan Item](../../doc/controllers/plans.md#create-plan-item)
* [Get Plans](../../doc/controllers/plans.md#get-plans)
* [Get Plan](../../doc/controllers/plans.md#get-plan)
* [Update Plan](../../doc/controllers/plans.md#update-plan)
* [Update Plan Metadata](../../doc/controllers/plans.md#update-plan-metadata)
* [Create Plan](../../doc/controllers/plans.md#create-plan)
* [Delete Plan Item](../../doc/controllers/plans.md#delete-plan-item)
* [Delete Plan](../../doc/controllers/plans.md#delete-plan)
* [Get Plan Item](../../doc/controllers/plans.md#get-plan-item)


# Update Plan Item

Updates a plan item

```ruby
def update_plan_item(plan_id,
                     plan_item_id,
                     body,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |
| `body` | [`UpdatePlanItemRequest`](../../doc/models/update-plan-item-request.md) | Body, Required | Request for updating the plan item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
plan_item_id = 'plan_item_id0'
body = UpdatePlanItemRequest.new
body.name = 'name6'
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


result = plans_controller.update_plan_item(plan_id, plan_item_id, body, )
```


# Create Plan Item

Adds a new item to a plan

```ruby
def create_plan_item(plan_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `request` | [`CreatePlanItemRequest`](../../doc/models/create-plan-item-request.md) | Body, Required | Request for creating a plan item |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
request = CreatePlanItemRequest.new
request.name = 'name6'
request.pricing_scheme = CreatePricingSchemeRequest.new
request.pricing_scheme.scheme_type = 'scheme_type2'
request.pricing_scheme.price_brackets = []


request.pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
request.pricing_scheme.price_brackets[0].start_quantity = 87
request.pricing_scheme.price_brackets[0].price = 231

request.id = 'id6'
request.description = 'description6'

result = plans_controller.create_plan_item(plan_id, request, )
```


# Get Plans

Gets all plans

```ruby
def get_plans(page: nil,
              size: nil,
              name: nil,
              status: nil,
              billing_type: nil,
              created_since: nil,
              created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `name` | `String` | Query, Optional | Filter for Plan's name |
| `status` | `String` | Query, Optional | Filter for Plan's status |
| `billing_type` | `String` | Query, Optional | Filter for plan's billing type |
| `created_since` | `DateTime` | Query, Optional | Filter for plan's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for plan's creation date end range |

## Response Type

[`ListPlansResponse`](../../doc/models/list-plans-response.md)

## Example Usage

```ruby
result = plans_controller.get_plans()
```


# Get Plan

Gets a plan

```ruby
def get_plan(plan_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

result = plans_controller.get_plan(plan_id)
```


# Update Plan

Updates a plan

```ruby
def update_plan(plan_id,
                request,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `request` | [`UpdatePlanRequest`](../../doc/models/update-plan-request.md) | Body, Required | Request for updating a plan |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
request = UpdatePlanRequest.new
request.name = 'name6'
request.description = 'description6'
request.installments = [151, 152]
request.statement_descriptor = 'statement_descriptor6'
request.currency = 'currency6'
request.interval = 'interval4'
request.interval_count = 114
request.payment_methods = ['payment_methods1', 'payment_methods0', 'payment_methods9']
request.billing_type = 'billing_type0'
request.status = 'status8'
request.shippable = false
request.billing_days = [115]
request.metadata = {'key0' => 'metadata3' } 

result = plans_controller.update_plan(plan_id, request, )
```


# Update Plan Metadata

Updates the metadata from a plan

```ruby
def update_plan_metadata(plan_id,
                         request,
                         idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | The plan id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the plan metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = plans_controller.update_plan_metadata(plan_id, request, )
```


# Create Plan

Creates a new plan

```ruby
def create_plan(body,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`CreatePlanRequest`](../../doc/models/create-plan-request.md) | Body, Required | Request for creating a plan |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
body = CreatePlanRequest.new
body.name = 'name6'
body.description = 'description4'
body.statement_descriptor = 'statement_descriptor6'
body.items = []


body.items[0] = CreatePlanItemRequest.new
body.items[0].name = 'name3'
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
body.items[0].description = 'description3'

body.items[1] = CreatePlanItemRequest.new
body.items[1].name = 'name4'
body.items[1].pricing_scheme = CreatePricingSchemeRequest.new
body.items[1].pricing_scheme.scheme_type = 'scheme_type4'
body.items[1].pricing_scheme.price_brackets = []


body.items[1].pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.items[1].pricing_scheme.price_brackets[0].start_quantity = 227
body.items[1].pricing_scheme.price_brackets[0].price = 91

body.items[1].id = 'id4'
body.items[1].description = 'description4'

body.items[2] = CreatePlanItemRequest.new
body.items[2].name = 'name5'
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
body.items[2].description = 'description5'

body.shippable = false
body.payment_methods = ['payment_methods9']
body.installments = [207]
body.currency = 'currency6'
body.interval = 'interval6'
body.interval_count = 170
body.billing_days = [201, 200]
body.billing_type = 'billing_type0'
body.pricing_scheme = CreatePricingSchemeRequest.new
body.pricing_scheme.scheme_type = 'scheme_type2'
body.pricing_scheme.price_brackets = []


body.pricing_scheme.price_brackets[0] = CreatePriceBracketRequest.new
body.pricing_scheme.price_brackets[0].start_quantity = 31
body.pricing_scheme.price_brackets[0].price = 225

body.pricing_scheme.price_brackets[1] = CreatePriceBracketRequest.new
body.pricing_scheme.price_brackets[1].start_quantity = 32
body.pricing_scheme.price_brackets[1].price = 226

body.metadata = {'key0' => 'metadata7', 'key1' => 'metadata8' } 

result = plans_controller.create_plan(body, )
```


# Delete Plan Item

Removes an item from a plan

```ruby
def delete_plan_item(plan_id,
                     plan_item_id,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
plan_item_id = 'plan_item_id0'

result = plans_controller.delete_plan_item(plan_id, plan_item_id, )
```


# Delete Plan

Deletes a plan

```ruby
def delete_plan(plan_id,
                idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetPlanResponse`](../../doc/models/get-plan-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'

result = plans_controller.delete_plan(plan_id, )
```


# Get Plan Item

Gets a plan item

```ruby
def get_plan_item(plan_id,
                  plan_item_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_id` | `String` | Template, Required | Plan id |
| `plan_item_id` | `String` | Template, Required | Plan item id |

## Response Type

[`GetPlanItemResponse`](../../doc/models/get-plan-item-response.md)

## Example Usage

```ruby
plan_id = 'plan_id8'
plan_item_id = 'plan_item_id0'

result = plans_controller.get_plan_item(plan_id, plan_item_id)
```

