# Charges

```ruby
charges_controller = client.charges
```

## Class Name

`ChargesController`

## Methods

* [Get Charge](../../doc/controllers/charges.md#get-charge)
* [Confirm Payment](../../doc/controllers/charges.md#confirm-payment)
* [Update Charge Card](../../doc/controllers/charges.md#update-charge-card)
* [Get Charges](../../doc/controllers/charges.md#get-charges)
* [Cancel Charge](../../doc/controllers/charges.md#cancel-charge)
* [Retry Charge](../../doc/controllers/charges.md#retry-charge)
* [Update Charge Payment Method](../../doc/controllers/charges.md#update-charge-payment-method)
* [Update Charge Metadata](../../doc/controllers/charges.md#update-charge-metadata)
* [Capture Charge](../../doc/controllers/charges.md#capture-charge)
* [Update Charge Due Date](../../doc/controllers/charges.md#update-charge-due-date)
* [Create Charge](../../doc/controllers/charges.md#create-charge)
* [Get Charge Transactions](../../doc/controllers/charges.md#get-charge-transactions)
* [Get Charges Summary](../../doc/controllers/charges.md#get-charges-summary)


# Get Charge

Get a charge from its id

```ruby
def get_charge(charge_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.get_charge(charge_id)
```


# Confirm Payment

```ruby
def confirm_payment(charge_id,
                    request: nil,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | - |
| `request` | [`CreateConfirmPaymentRequest`](../../doc/models/create-confirm-payment-request.md) | Body, Optional | Request for confirm payment |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.confirm_payment(charge_id, )
```


# Update Charge Card

Updates the card from a charge

```ruby
def update_charge_card(charge_id,
                       request,
                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`UpdateChargeCardRequest`](../../doc/models/update-charge-card-request.md) | Body, Required | Request for updating a charge's card |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'
request = UpdateChargeCardRequest.new
request.update_subscription = false
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
request.recurrence = false

result = charges_controller.update_charge_card(charge_id, request, )
```


# Get Charges

Lists all charges

```ruby
def get_charges(page: nil,
                size: nil,
                code: nil,
                status: nil,
                payment_method: nil,
                customer_id: nil,
                order_id: nil,
                created_since: nil,
                created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for charge's code |
| `status` | `String` | Query, Optional | Filter for charge's status |
| `payment_method` | `String` | Query, Optional | Filter for charge's payment method |
| `customer_id` | `String` | Query, Optional | Filter for charge's customer id |
| `order_id` | `String` | Query, Optional | Filter for charge's order id |
| `created_since` | `DateTime` | Query, Optional | Filter for the beginning of the range for charge's creation |
| `created_until` | `DateTime` | Query, Optional | Filter for the end of the range for charge's creation |

## Response Type

[`ListChargesResponse`](../../doc/models/list-charges-response.md)

## Example Usage

```ruby
result = charges_controller.get_charges()
```


# Cancel Charge

Cancel a charge

```ruby
def cancel_charge(charge_id,
                  request: nil,
                  idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`CreateCancelChargeRequest`](../../doc/models/create-cancel-charge-request.md) | Body, Optional | Request for cancelling a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.cancel_charge(charge_id, )
```


# Retry Charge

Retries a charge

```ruby
def retry_charge(charge_id,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.retry_charge(charge_id, )
```


# Update Charge Payment Method

Updates a charge's payment method

```ruby
def update_charge_payment_method(charge_id,
                                 request,
                                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`UpdateChargePaymentMethodRequest`](../../doc/models/update-charge-payment-method-request.md) | Body, Required | Request for updating the payment method from a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'
request = UpdateChargePaymentMethodRequest.new
request.update_subscription = false
request.payment_method = 'payment_method4'
request.credit_card = CreateCreditCardPaymentRequest.new
request.debit_card = CreateDebitCardPaymentRequest.new
request.boleto = CreateBoletoPaymentRequest.new
request.boleto.retries = 10
request.boleto.bank = 'bank4'
request.boleto.instructions = 'instructions4'
request.boleto.billing_address = CreateAddressRequest.new
request.boleto.billing_address.street = 'street8'
request.boleto.billing_address.number = 'number4'
request.boleto.billing_address.zip_code = 'zip_code2'
request.boleto.billing_address.neighborhood = 'neighborhood4'
request.boleto.billing_address.city = 'city2'
request.boleto.billing_address.state = 'state6'
request.boleto.billing_address.country = 'country2'
request.boleto.billing_address.complement = 'complement6'
request.boleto.billing_address.metadata = {'key0' => 'metadata5' } 
request.boleto.billing_address.line_1 = 'line_18'
request.boleto.billing_address.line_2 = 'line_26'
request.boleto.billing_address_id = 'billing_address_id2'
request.boleto.document_number = 'document_number0'
request.voucher = CreateVoucherPaymentRequest.new
request.cash = CreateCashPaymentRequest.new
request.cash.description = 'description6'
request.cash.confirm = false
request.bank_transfer = CreateBankTransferPaymentRequest.new
request.bank_transfer.bank = 'bank4'
request.bank_transfer.retries = 204
request.private_label = CreatePrivateLabelPaymentRequest.new

result = charges_controller.update_charge_payment_method(charge_id, request, )
```


# Update Charge Metadata

Updates the metadata from a charge

```ruby
def update_charge_metadata(charge_id,
                           request,
                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | The charge id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the charge metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = charges_controller.update_charge_metadata(charge_id, request, )
```


# Capture Charge

Captures a charge

```ruby
def capture_charge(charge_id,
                   request: nil,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge id |
| `request` | [`CreateCaptureChargeRequest`](../../doc/models/create-capture-charge-request.md) | Body, Optional | Request for capturing a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.capture_charge(charge_id, )
```


# Update Charge Due Date

Updates the due date from a charge

```ruby
def update_charge_due_date(charge_id,
                           request,
                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge Id |
| `request` | [`UpdateChargeDueDateRequest`](../../doc/models/update-charge-due-date-request.md) | Body, Required | Request for updating the due date |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'
request = UpdateChargeDueDateRequest.new

result = charges_controller.update_charge_due_date(charge_id, request, )
```


# Create Charge

Creates a new charge

```ruby
def create_charge(request,
                  idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateChargeRequest`](../../doc/models/create-charge-request.md) | Body, Required | Request for creating a charge |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetChargeResponse`](../../doc/models/get-charge-response.md)

## Example Usage

```ruby
request = CreateChargeRequest.new
request.code = 'code4'
request.amount = 242
request.customer_id = 'customer_id4'
request.customer = CreateCustomerRequest.new
request.customer.name = '{
    "name": "Tony Stark"
}'
request.customer.email = 'email0'
request.customer.document = 'document0'
request.customer.type = 'type4'
request.customer.address = CreateAddressRequest.new
request.customer.address.street = 'street2'
request.customer.address.number = 'number0'
request.customer.address.zip_code = 'zip_code6'
request.customer.address.neighborhood = 'neighborhood8'
request.customer.address.city = 'city2'
request.customer.address.state = 'state8'
request.customer.address.country = 'country6'
request.customer.address.complement = 'complement8'
request.customer.address.metadata = {'key0' => 'metadata7', 'key1' => 'metadata6' } 
request.customer.address.line_1 = 'line_16'
request.customer.address.line_2 = 'line_20'
request.customer.metadata = {'key0' => 'metadata3', 'key1' => 'metadata2', 'key2' => 'metadata1' } 
request.customer.phones = CreatePhonesRequest.new
request.customer.code = 'code4'
request.payment = CreatePaymentRequest.new
request.payment.payment_method = 'payment_method2'
request.payment.private_label = CreatePrivateLabelPaymentRequest.new
request.metadata = {'key0' => 'metadata3' } 
request.antifraud = CreateAntifraudRequest.new
request.antifraud.type = 'type0'
request.antifraud.clearsale = CreateClearSaleRequest.new
request.antifraud.clearsale.custom_sla = 52
request.order_id = 'order_id0'

result = charges_controller.create_charge(request, )
```


# Get Charge Transactions

```ruby
def get_charge_transactions(charge_id,
                            page: nil,
                            size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `charge_id` | `String` | Template, Required | Charge Id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListChargeTransactionsResponse`](../../doc/models/list-charge-transactions-response.md)

## Example Usage

```ruby
charge_id = 'charge_id8'

result = charges_controller.get_charge_transactions(charge_id, )
```


# Get Charges Summary

```ruby
def get_charges_summary(status,
                        created_since: nil,
                        created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Query, Required | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |

## Response Type

[`GetChargesSummaryResponse`](../../doc/models/get-charges-summary-response.md)

## Example Usage

```ruby
status = 'status8'

result = charges_controller.get_charges_summary(status, )
```

