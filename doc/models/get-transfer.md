
# Get Transfer

## Structure

`GetTransfer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `gateway_id` | `String` | Required | - |
| `amount` | `Integer` | Required | - |
| `status` | `String` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `updated_at` | `DateTime` | Required | - |
| `metadata` | `Hash of String` | Optional | - |
| `fee` | `Integer` | Optional | - |
| `funding_date` | `DateTime` | Optional | - |
| `funding_estimated_date` | `DateTime` | Optional | - |
| `type` | `String` | Required | - |
| `source` | [`GetTransferSourceResponse`](../../doc/models/get-transfer-source-response.md) | Required | - |
| `target` | [`GetTransferTargetResponse`](../../doc/models/get-transfer-target-response.md) | Required | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "gateway_id": "gateway_id0",
  "amount": 46,
  "status": "status8",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "metadata": null,
  "fee": null,
  "funding_date": null,
  "funding_estimated_date": null,
  "type": "type0",
  "source": {
    "source_id": "source_id8",
    "type": "type6"
  },
  "target": {
    "target_id": "target_id2",
    "type": "type8"
  }
}
```

