
# Create Three D Secure Request

Creates a 3D-S authentication payment

## Structure

`CreateThreeDSecureRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mpi` | `String` | Required | The MPI Vendor (MerchantPlugin) |
| `cavv` | `String` | Optional | The Cardholder Authentication Verification value |
| `eci` | `String` | Optional | The Electronic Commerce Indicator value |
| `transaction_id` | `String` | Optional | The TransactionId value (XID) |
| `success_url` | `String` | Optional | The success URL after the authentication |
| `ds_transaction_id` | `String` | Optional | Directory Service Transaction Identifier |
| `version` | `String` | Optional | ThreeDSecure Version |

## Example (as JSON)

```json
{
  "mpi": "mpi2",
  "cavv": null,
  "eci": null,
  "transaction_id": null,
  "success_url": null,
  "ds_transaction_id": null,
  "version": null
}
```

