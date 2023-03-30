
# Get Three D Secure Response

3D-S payment authentication response

## Structure

`GetThreeDSecureResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `mpi` | `String` | Required | MPI Vendor |
| `eci` | `String` | Required | Electronic Commerce Indicator (ECI) (Opcional) |
| `cavv` | `String` | Required | Online payment cryptogram, definido pelo 3-D Secure. |
| `transaction_id` | `String` | Required | Identificador da transação (XID) |
| `success_url` | `String` | Required | Url de redirecionamento de sucessso |

## Example (as JSON)

```json
{
  "mpi": "mpi2",
  "eci": "eci0",
  "cavv": "cavv4",
  "transaction_Id": "transaction_Id4",
  "success_url": "success_url2"
}
```

