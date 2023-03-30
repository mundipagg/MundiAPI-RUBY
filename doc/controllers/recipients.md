# Recipients

```ruby
recipients_controller = client.recipients
```

## Class Name

`RecipientsController`

## Methods

* [Update Recipient Metadata](../../doc/controllers/recipients.md#update-recipient-metadata)
* [Update Recipient Transfer Settings](../../doc/controllers/recipients.md#update-recipient-transfer-settings)
* [Get Anticipation](../../doc/controllers/recipients.md#get-anticipation)
* [Get Recipients](../../doc/controllers/recipients.md#get-recipients)
* [Get Balance](../../doc/controllers/recipients.md#get-balance)
* [Get Anticipations](../../doc/controllers/recipients.md#get-anticipations)
* [Create Anticipation](../../doc/controllers/recipients.md#create-anticipation)
* [Update Recipient Default Bank Account](../../doc/controllers/recipients.md#update-recipient-default-bank-account)
* [Get Recipient](../../doc/controllers/recipients.md#get-recipient)
* [Get Anticipation Limits](../../doc/controllers/recipients.md#get-anticipation-limits)
* [Get Transfer](../../doc/controllers/recipients.md#get-transfer)
* [Get Transfers](../../doc/controllers/recipients.md#get-transfers)
* [Update Recipient](../../doc/controllers/recipients.md#update-recipient)
* [Create Recipient](../../doc/controllers/recipients.md#create-recipient)
* [Create Transfer](../../doc/controllers/recipients.md#create-transfer)
* [Create Withdraw](../../doc/controllers/recipients.md#create-withdraw)
* [Get Withdraw by Id](../../doc/controllers/recipients.md#get-withdraw-by-id)
* [Get Withdrawals](../../doc/controllers/recipients.md#get-withdrawals)
* [Update Automatic Anticipation Settings](../../doc/controllers/recipients.md#update-automatic-anticipation-settings)
* [Get Recipient by Code](../../doc/controllers/recipients.md#get-recipient-by-code)


# Update Recipient Metadata

Updates recipient metadata

```ruby
def update_recipient_metadata(recipient_id,
                              request,
                              idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateMetadataRequest`](../../doc/models/update-metadata-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = UpdateMetadataRequest.new
request.metadata = {'key0' => 'metadata3' } 

result = recipients_controller.update_recipient_metadata(recipient_id, request, )
```


# Update Recipient Transfer Settings

```ruby
def update_recipient_transfer_settings(recipient_id,
                                       request,
                                       idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Identificator |
| `request` | [`UpdateTransferSettingsRequest`](../../doc/models/update-transfer-settings-request.md) | Body, Required | - |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = UpdateTransferSettingsRequest.new
request.transfer_enabled = 'transfer_enabled2'
request.transfer_interval = 'transfer_interval6'
request.transfer_day = 'transfer_day6'

result = recipients_controller.update_recipient_transfer_settings(recipient_id, request, )
```


# Get Anticipation

Gets an anticipation

```ruby
def get_anticipation(recipient_id,
                     anticipation_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `anticipation_id` | `String` | Template, Required | Anticipation id |

## Response Type

[`GetAnticipationResponse`](../../doc/models/get-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
anticipation_id = 'anticipation_id0'

result = recipients_controller.get_anticipation(recipient_id, anticipation_id)
```


# Get Recipients

Retrieves paginated recipients information

```ruby
def get_recipients(page: nil,
                   size: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |

## Response Type

[`ListRecipientResponse`](../../doc/models/list-recipient-response.md)

## Example Usage

```ruby
result = recipients_controller.get_recipients()
```


# Get Balance

Get balance information for a recipient

```ruby
def get_balance(recipient_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |

## Response Type

[`GetBalanceResponse`](../../doc/models/get-balance-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_balance(recipient_id)
```


# Get Anticipations

Retrieves a paginated list of anticipations from a recipient

```ruby
def get_anticipations(recipient_id,
                      page: nil,
                      size: nil,
                      status: nil,
                      timeframe: nil,
                      payment_date_since: nil,
                      payment_date_until: nil,
                      created_since: nil,
                      created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `status` | `String` | Query, Optional | Filter for anticipation status |
| `timeframe` | `String` | Query, Optional | Filter for anticipation timeframe |
| `payment_date_since` | `DateTime` | Query, Optional | Filter for start range for anticipation payment date |
| `payment_date_until` | `DateTime` | Query, Optional | Filter for end range for anticipation payment date |
| `created_since` | `DateTime` | Query, Optional | Filter for start range for anticipation creation date |
| `created_until` | `DateTime` | Query, Optional | Filter for end range for anticipation creation date |

## Response Type

[`ListAnticipationResponse`](../../doc/models/list-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_anticipations(recipient_id, )
```


# Create Anticipation

Creates an anticipation

```ruby
def create_anticipation(recipient_id,
                        request,
                        idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`CreateAnticipationRequest`](../../doc/models/create-anticipation-request.md) | Body, Required | Anticipation data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetAnticipationResponse`](../../doc/models/get-anticipation-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = CreateAnticipationRequest.new
request.amount = 242
request.timeframe = 'timeframe8'
request.payment_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = recipients_controller.create_anticipation(recipient_id, request, )
```


# Update Recipient Default Bank Account

Updates the default bank account from a recipient

```ruby
def update_recipient_default_bank_account(recipient_id,
                                          request,
                                          idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientBankAccountRequest`](../../doc/models/update-recipient-bank-account-request.md) | Body, Required | Bank account data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = UpdateRecipientBankAccountRequest.new
request.bank_account = CreateBankAccountRequest.new
request.bank_account.holder_name = 'holder_name6'
request.bank_account.holder_type = 'holder_type2'
request.bank_account.holder_document = 'holder_document4'
request.bank_account.bank = 'bank8'
request.bank_account.branch_number = 'branch_number6'
request.bank_account.branch_check_digit = 'branch_check_digit6'
request.bank_account.account_number = 'account_number0'
request.bank_account.account_check_digit = 'account_check_digit6'
request.bank_account.type = 'type0'
request.bank_account.metadata = {'key0' => 'metadata9', 'key1' => 'metadata8' } 
request.bank_account.pix_key = 'pix_key4'
request.payment_mode = 'bank_transfer'

result = recipients_controller.update_recipient_default_bank_account(recipient_id, request, )
```


# Get Recipient

Retrieves recipient information

```ruby
def get_recipient(recipient_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipiend id |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_recipient(recipient_id)
```


# Get Anticipation Limits

Gets the anticipation limits for a recipient

```ruby
def get_anticipation_limits(recipient_id,
                            timeframe,
                            payment_date)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `timeframe` | `String` | Query, Required | Timeframe |
| `payment_date` | `DateTime` | Query, Required | Anticipation payment date |

## Response Type

[`GetAnticipationLimitResponse`](../../doc/models/get-anticipation-limit-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
timeframe = 'timeframe2'
payment_date = DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')

result = recipients_controller.get_anticipation_limits(recipient_id, timeframe, payment_date)
```


# Get Transfer

Gets a transfer

```ruby
def get_transfer(recipient_id,
                 transfer_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `transfer_id` | `String` | Template, Required | Transfer id |

## Response Type

[`GetTransferResponse`](../../doc/models/get-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
transfer_id = 'transfer_id6'

result = recipients_controller.get_transfer(recipient_id, transfer_id)
```


# Get Transfers

Gets a paginated list of transfers for the recipient

```ruby
def get_transfers(recipient_id,
                  page: nil,
                  size: nil,
                  status: nil,
                  created_since: nil,
                  created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `page` | `Integer` | Query, Optional | Page number |
| `size` | `Integer` | Query, Optional | Page size |
| `status` | `String` | Query, Optional | Filter for transfer status |
| `created_since` | `DateTime` | Query, Optional | Filter for start range of transfer creation date |
| `created_until` | `DateTime` | Query, Optional | Filter for end range of transfer creation date |

## Response Type

[`ListTransferResponse`](../../doc/models/list-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_transfers(recipient_id, )
```


# Update Recipient

Updates a recipient

```ruby
def update_recipient(recipient_id,
                     request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateRecipientRequest`](../../doc/models/update-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = UpdateRecipientRequest.new
request.name = 'name6'
request.email = 'email0'
request.description = 'description6'
request.type = 'type4'
request.status = 'status8'
request.metadata = {'key0' => 'metadata3' } 

result = recipients_controller.update_recipient(recipient_id, request, )
```


# Create Recipient

Creates a new recipient

```ruby
def create_recipient(request,
                     idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `request` | [`CreateRecipientRequest`](../../doc/models/create-recipient-request.md) | Body, Required | Recipient data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
request = CreateRecipientRequest.new
request.name = 'name6'
request.email = 'email0'
request.description = 'description6'
request.document = 'document0'
request.type = 'type4'
request.default_bank_account = CreateBankAccountRequest.new
request.default_bank_account.holder_name = 'holder_name0'
request.default_bank_account.holder_type = 'holder_type6'
request.default_bank_account.holder_document = 'holder_document8'
request.default_bank_account.bank = 'bank2'
request.default_bank_account.branch_number = 'branch_number0'
request.default_bank_account.branch_check_digit = 'branch_check_digit0'
request.default_bank_account.account_number = 'account_number4'
request.default_bank_account.account_check_digit = 'account_check_digit0'
request.default_bank_account.type = 'type4'
request.default_bank_account.metadata = {'key0' => 'metadata5' } 
request.default_bank_account.pix_key = 'pix_key8'
request.metadata = {'key0' => 'metadata3' } 
request.code = 'code4'
request.payment_mode = 'bank_transfer'

result = recipients_controller.create_recipient(request, )
```


# Create Transfer

Creates a transfer for a recipient

```ruby
def create_transfer(recipient_id,
                    request,
                    idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient Id |
| `request` | [`CreateTransferRequest`](../../doc/models/create-transfer-request.md) | Body, Required | Transfer data |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetTransferResponse`](../../doc/models/get-transfer-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = CreateTransferRequest.new
request.amount = 242
request.metadata = {'key0' => 'metadata3' } 

result = recipients_controller.create_transfer(recipient_id, request, )
```


# Create Withdraw

```ruby
def create_withdraw(recipient_id,
                    request)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `request` | [`CreateWithdrawRequest`](../../doc/models/create-withdraw-request.md) | Body, Required | - |

## Response Type

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = CreateWithdrawRequest.new
request.amount = 242

result = recipients_controller.create_withdraw(recipient_id, request)
```


# Get Withdraw by Id

```ruby
def get_withdraw_by_id(recipient_id,
                       withdrawal_id)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `withdrawal_id` | `String` | Template, Required | - |

## Response Type

[`GetWithdrawResponse`](../../doc/models/get-withdraw-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
withdrawal_id = 'withdrawal_id2'

result = recipients_controller.get_withdraw_by_id(recipient_id, withdrawal_id)
```


# Get Withdrawals

Gets a paginated list of transfers for the recipient

```ruby
def get_withdrawals(recipient_id,
                    page: nil,
                    size: nil,
                    status: nil,
                    created_since: nil,
                    created_until: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | - |
| `page` | `Integer` | Query, Optional | - |
| `size` | `Integer` | Query, Optional | - |
| `status` | `String` | Query, Optional | - |
| `created_since` | `DateTime` | Query, Optional | - |
| `created_until` | `DateTime` | Query, Optional | - |

## Response Type

[`ListWithdrawals`](../../doc/models/list-withdrawals.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'

result = recipients_controller.get_withdrawals(recipient_id, )
```


# Update Automatic Anticipation Settings

Updates recipient metadata

```ruby
def update_automatic_anticipation_settings(recipient_id,
                                           request,
                                           idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recipient_id` | `String` | Template, Required | Recipient id |
| `request` | [`UpdateAutomaticAnticipationSettingsRequest`](../../doc/models/update-automatic-anticipation-settings-request.md) | Body, Required | Metadata |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
recipient_id = 'recipient_id0'
request = UpdateAutomaticAnticipationSettingsRequest.new

result = recipients_controller.update_automatic_anticipation_settings(recipient_id, request, )
```


# Get Recipient by Code

Retrieves recipient information

```ruby
def get_recipient_by_code(code)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `String` | Template, Required | Recipient code |

## Response Type

[`GetRecipientResponse`](../../doc/models/get-recipient-response.md)

## Example Usage

```ruby
code = 'code8'

result = recipients_controller.get_recipient_by_code(code)
```

