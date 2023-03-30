
# Get Automatic Anticipation Response

## Structure

`GetAutomaticAnticipationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass\|FalseClass` | Required | - |
| `type` | `String` | Required | - |
| `volume_percentage` | `Integer` | Required | - |
| `delay` | `Integer` | Required | - |
| `days` | `Array<Integer>` | Required | - |

## Example (as JSON)

```json
{
  "enabled": false,
  "type": "type0",
  "volume_percentage": 62,
  "delay": 228,
  "days": [
    188,
    189,
    190
  ]
}
```

