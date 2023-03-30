
# Create Bank Account Request

Request for creating a bank account

## Structure

`CreateBankAccountRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `holder_name` | `String` | Required | Bank account holder name |
| `holder_type` | `String` | Required | Bank account holder type |
| `holder_document` | `String` | Required | Bank account holder document |
| `bank` | `String` | Required | Bank |
| `branch_number` | `String` | Required | Branch number |
| `branch_check_digit` | `String` | Required | Branch check digit |
| `account_number` | `String` | Required | Account number |
| `account_check_digit` | `String` | Required | Account check digit |
| `type` | `String` | Required | Bank account type |
| `metadata` | `Hash of String` | Required | Metadata |
| `pix_key` | `String` | Required | Pix key |

## Example (as JSON)

```json
{
  "holder_name": "holder_name4",
  "holder_type": "holder_type2",
  "holder_document": "holder_document6",
  "bank": "bank8",
  "branch_number": "branch_number6",
  "branch_check_digit": "branch_check_digit4",
  "account_number": "account_number0",
  "account_check_digit": "account_check_digit6",
  "type": "type0",
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "pix_key": "pix_key6"
}
```

