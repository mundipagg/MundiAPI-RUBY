# Invoices

```ruby
invoices_controller = client.invoices
```

## Class Name

`InvoicesController`

## Methods

* [Create Invoice](../../doc/controllers/invoices.md#create-invoice)
* [Get Partial Invoice](../../doc/controllers/invoices.md#get-partial-invoice)
* [Update Invoice Status](../../doc/controllers/invoices.md#update-invoice-status)
* [Get Invoice](../../doc/controllers/invoices.md#get-invoice)
* [Update Invoice Metadata](../../doc/controllers/invoices.md#update-invoice-metadata)
* [Get Invoices](../../doc/controllers/invoices.md#get-invoices)
* [Cancel Invoice](../../doc/controllers/invoices.md#cancel-invoice)


# Create Invoice

Create an Invoice

```ruby
def create_invoice(subscription_id,
                   cycle_id,
                   request: nil,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |
| `cycle_id` | `String` | Template, Required | Cycle Id |
| `request` | [`CreateInvoiceRequest`](../../doc/models/create-invoice-request.md) | Body, Optional | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'
cycle_id = 'cycle_id6'

result = invoices_controller.create_invoice(subscription_id, cycle_id, )
```


# Get Partial Invoice

```ruby
def get_partial_invoice(subscription_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `subscription_id` | `String` | Template, Required | Subscription Id |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
subscription_id = 'subscription_id0'

result = invoices_controller.get_partial_invoice(subscription_id)
```


# Update Invoice Status

Updates the status from an invoice

```ruby
def update_invoice_status(invoice_id,
                          request,
                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice Id |
| `request` | [`UpdateInvoiceStatusRequest`](../../doc/models/update-invoice-status-request.md) | Body, Required | Request for updating an invoice's status |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'
request = UpdateInvoiceStatusRequest.new
request.status = 'status8'

result = invoices_controller.update_invoice_status(invoice_id, request, )
```


# Get Invoice

Gets an invoice

```ruby
def get_invoice(invoice_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice Id |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_controller.get_invoice(invoice_id)
```


# Update Invoice Metadata

Updates the metadata from an invoice

```ruby
def update_invoice_metadata(invoice_id,
                            request,
                            idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | The invoice id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Request for updating the invoice metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = invoices_controller.update_invoice_metadata(invoice_id, request, )
```


# Get Invoices

Gets all invoices

```ruby
def get_invoices(page: nil,
                 size: nil,
                 code: nil,
                 customer_id: nil,
                 subscription_id: nil,
                 created_since: nil,
                 created_until: nil,
                 status: nil,
                 due_since: nil,
                 due_until: nil,
                 customer_document: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `code` | `String` | Query, Optional | Filter for Invoice's code |
| `customer_id` | `String` | Query, Optional | Filter for Invoice's customer id |
| `subscription_id` | `String` | Query, Optional | Filter for Invoice's subscription id |
| `created_since` | `DateTime` | Query, Optional | Filter for Invoice's creation date start range |
| `created_until` | `DateTime` | Query, Optional | Filter for Invoices creation date end range |
| `status` | `String` | Query, Optional | Filter for Invoice's status |
| `due_since` | `DateTime` | Query, Optional | Filter for Invoice's due date start range |
| `due_until` | `DateTime` | Query, Optional | Filter for Invoice's due date end range |
| `customer_document` | `String` | Query, Optional | Fillter for invoice's document |

## Response Type

[`ListInvoicesResponse`](../../doc/models/list-invoices-response.md)

## Example Usage

```ruby
result = invoices_controller.get_invoices()
```


# Cancel Invoice

Cancels an invoice

```ruby
def cancel_invoice(invoice_id,
                   idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `invoice_id` | `String` | Template, Required | Invoice id |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetInvoiceResponse`](../../doc/models/get-invoice-response.md)

## Example Usage

```ruby
invoice_id = 'invoice_id0'

result = invoices_controller.cancel_invoice(invoice_id, )
```

