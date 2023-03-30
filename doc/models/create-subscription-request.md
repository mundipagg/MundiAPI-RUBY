
# Create Subscription Request

Request for creating a subcription

## Structure

`CreateSubscriptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer` | [`CreateCustomerRequest`](../../doc/models/create-customer-request.md) | Required | Customer |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Card |
| `code` | `String` | Required | Subscription code |
| `payment_method` | `String` | Required | Payment method |
| `billing_type` | `String` | Required | Billing type |
| `statement_descriptor` | `String` | Required | Statement descriptor for credit card subscriptions |
| `description` | `String` | Required | Subscription description |
| `currency` | `String` | Required | Currency |
| `interval` | `String` | Required | Interval |
| `interval_count` | `Integer` | Required | Interval count |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Subscription pricing scheme |
| `items` | [`Array<CreateSubscriptionItemRequest>`](../../doc/models/create-subscription-item-request.md) | Required | Subscription items |
| `shipping` | [`CreateShippingRequest`](../../doc/models/create-shipping-request.md) | Required | Shipping |
| `discounts` | [`Array<CreateDiscountRequest>`](../../doc/models/create-discount-request.md) | Required | Discounts |
| `metadata` | `Hash of String` | Required | Metadata |
| `setup` | [`CreateSetupRequest`](../../doc/models/create-setup-request.md) | Required | Setup data |
| `plan_id` | `String` | Optional | Plan id |
| `customer_id` | `String` | Optional | Customer id |
| `card_id` | `String` | Optional | Card id |
| `billing_day` | `Integer` | Optional | Billing day |
| `installments` | `Integer` | Optional | Number of installments |
| `start_at` | `DateTime` | Optional | Subscription start date |
| `minimum_price` | `Integer` | Optional | Subscription minimum price |
| `cycles` | `Integer` | Optional | Number of cycles |
| `card_token` | `String` | Optional | Card token |
| `gateway_affiliation_id` | `String` | Optional | Gateway Affiliation code |
| `quantity` | `Integer` | Optional | Quantity |
| `boleto_due_days` | `Integer` | Optional | Days until boleto expires |
| `increments` | [`Array<CreateIncrementRequest>`](../../doc/models/create-increment-request.md) | Required | Increments |
| `period` | [`CreatePeriodRequest`](../../doc/models/create-period-request.md) | Optional | - |
| `submerchant` | [`CreateSubMerchantRequest`](../../doc/models/create-sub-merchant-request.md) | Optional | SubMerchant |
| `split` | [`CreateSubscriptionSplitRequest`](../../doc/models/create-subscription-split-request.md) | Optional | Subscription's split |

## Example (as JSON)

```json
{
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
  "card": {
    "number": null,
    "holder_name": null,
    "exp_month": null,
    "exp_year": null,
    "cvv": null,
    "billing_address": null,
    "brand": null,
    "billing_address_id": null,
    "metadata": null,
    "type": "credit",
    "options": null,
    "private_label": null,
    "label": null
  },
  "code": null,
  "payment_method": null,
  "billing_type": null,
  "statement_descriptor": null,
  "description": null,
  "currency": null,
  "interval": null,
  "interval_count": null,
  "pricing_scheme": null,
  "items": null,
  "shipping": null,
  "discounts": null,
  "metadata": null,
  "setup": null,
  "increments": null
}
```

