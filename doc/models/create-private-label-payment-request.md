
# Create Private Label Payment Request

The settings for creating a private label payment

## Structure

`CreatePrivateLabelPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `installments` | `Integer` | Optional | Number of installments<br>**Default**: `1` |
| `statement_descriptor` | `String` | Optional | The text that will be shown on the private label's statement |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Optional | Card data |
| `card_id` | `String` | Optional | The Card id |
| `card_token` | `String` | Optional | - |
| `recurrence` | `TrueClass\|FalseClass` | Optional | Indicates a recurrence |
| `capture` | `TrueClass\|FalseClass` | Optional | Indicates if the operation should be only authorization or auth and capture.<br>**Default**: `true` |
| `extended_limit_enabled` | `TrueClass\|FalseClass` | Optional | Indicates whether the extended label (private label) is enabled |
| `extended_limit_code` | `String` | Optional | Extended Limit Code |
| `recurrency_cycle` | `String` | Optional | Defines whether the card has been used one or more times. |

## Example (as JSON)

```json
{
  "installments": null,
  "statement_descriptor": null,
  "card": null,
  "card_id": null,
  "card_token": null,
  "recurrence": null,
  "capture": null,
  "extended_limit_enabled": null,
  "extended_limit_code": null,
  "recurrency_cycle": null
}
```

