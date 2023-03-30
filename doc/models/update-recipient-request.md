
# Update Recipient Request

Request for updating a Recipient

## Structure

`UpdateRecipientRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `description` | `String` | Required | Description |
| `type` | `String` | Required | Type |
| `status` | `String` | Required | Status |
| `metadata` | `Hash of String` | Required | Metadata |

## Example (as JSON)

```json
{
  "name": "name0",
  "email": "email6",
  "description": "description0",
  "type": "type0",
  "status": "status8",
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  }
}
```

