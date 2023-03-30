# Tokens

```ruby
tokens_controller = client.tokens
```

## Class Name

`TokensController`

## Methods

* [Create Token](../../doc/controllers/tokens.md#create-token)
* [Get Token](../../doc/controllers/tokens.md#get-token)


# Create Token

:information_source: **Note** This endpoint does not require authentication.

```ruby
def create_token(public_key,
                 request,
                 idempotency_key: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `public_key` | `String` | Template, Required | Public key |
| `request` | [`CreateTokenRequest`](../../doc/models/create-token-request.md) | Body, Required | Request for creating a token |
| `idempotency_key` | `String` | Header, Optional | - |

## Response Type

[`GetTokenResponse`](../../doc/models/get-token-response.md)

## Example Usage

```ruby
public_key = 'public_key6'
request = CreateTokenRequest.new
request.type = 'card'
request.card = CreateCardTokenRequest.new
request.card.number = 'number2'
request.card.holder_name = 'holder_name6'
request.card.exp_month = 80
request.card.exp_year = 216
request.card.cvv = 'cvv8'
request.card.brand = 'brand4'
request.card.label = 'label0'

result = tokens_controller.create_token(public_key, request, )
```


# Get Token

Gets a token from its id

:information_source: **Note** This endpoint does not require authentication.

```ruby
def get_token(id,
              public_key)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Template, Required | Token id |
| `public_key` | `String` | Template, Required | Public key |

## Response Type

[`GetTokenResponse`](../../doc/models/get-token-response.md)

## Example Usage

```ruby
id = 'id0'
public_key = 'public_key6'

result = tokens_controller.get_token(id, public_key)
```

