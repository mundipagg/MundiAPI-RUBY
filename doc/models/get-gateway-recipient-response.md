
# Get Gateway Recipient Response

Information about the recipient on the gateway

## Structure

`GetGatewayRecipientResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `gateway` | `String` | Required | Gateway name |
| `status` | `String` | Required | Status of the recipient on the gateway |
| `pgid` | `String` | Required | Recipient id on the gateway |
| `created_at` | `String` | Required | Creation date |
| `updated_at` | `String` | Required | Last update date |

## Example (as JSON)

```json
{
  "gateway": "gateway0",
  "status": "status8",
  "pgid": "pgid4",
  "created_at": "created_at2",
  "updated_at": "updated_at4"
}
```

