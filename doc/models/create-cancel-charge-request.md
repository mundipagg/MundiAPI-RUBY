
# Create Cancel Charge Request

Request for canceling a charge.

## Structure

`CreateCancelChargeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | The amount that will be canceled. |
| `split_rules` | [`Array<CreateCancelChargeSplitRulesRequest>`](../../doc/models/create-cancel-charge-split-rules-request.md) | Optional | The split rules request |
| `split` | [`Array<CreateSplitRequest>`](../../doc/models/create-split-request.md) | Optional | Splits |
| `operation_reference` | `String` | Required | - |

## Example (as JSON)

```json
{
  "amount": null,
  "split_rules": null,
  "split": null,
  "operation_reference": "operation_reference0"
}
```

