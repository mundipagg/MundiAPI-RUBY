
# Create Usage Request

Request for creating a usage

## Structure

`CreateUsageRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity` | `Integer` | Required | - |
| `description` | `String` | Required | - |
| `used_at` | `DateTime` | Required | - |
| `code` | `String` | Optional | Identification code in the client system |
| `group` | `String` | Optional | identification group in the client system |
| `amount` | `Integer` | Optional | Field used in item scheme type 'Percent' |

## Example (as JSON)

```json
{
  "quantity": 68,
  "description": "description0",
  "used_at": "2016-03-13T12:52:32.123Z",
  "code": null,
  "group": null,
  "amount": null
}
```

