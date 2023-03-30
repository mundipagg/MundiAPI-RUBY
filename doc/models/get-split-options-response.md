
# Get Split Options Response

## Structure

`GetSplitOptionsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `liable` | `TrueClass\|FalseClass` | Required | - |
| `charge_processing_fee` | `TrueClass\|FalseClass` | Required | - |
| `charge_remainder_fee` | `String` | Required | - |

## Example (as JSON)

```json
{
  "liable": false,
  "charge_processing_fee": false,
  "charge_remainder_fee": "charge_remainder_fee8"
}
```

