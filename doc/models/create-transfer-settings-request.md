
# Create Transfer Settings Request

Informações de transferência do recebedor

## Structure

`CreateTransferSettingsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_enabled` | `TrueClass\|FalseClass` | Required | - |
| `transfer_interval` | `String` | Required | - |
| `transfer_day` | `Integer` | Required | - |

## Example (as JSON)

```json
{
  "transfer_enabled": false,
  "transfer_interval": "transfer_interval0",
  "transfer_day": 18
}
```

