
# Get Bank Account Response

Response object to bank account

## Structure

`GetBankAccountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Id |
| `holder_name` | `String` | Required | Holder name |
| `holder_type` | `String` | Required | Holder type |
| `bank` | `String` | Required | Bank |
| `branch_number` | `String` | Required | Branch number |
| `branch_check_digit` | `String` | Required | Branch check digit |
| `account_number` | `String` | Required | Account number |
| `account_check_digit` | `String` | Required | Account check digit |
| `type` | `String` | Required | Bank account type |
| `status` | `String` | Required | Bank account status |
| `created_at` | `DateTime` | Required | Creation date |
| `updated_at` | `DateTime` | Required | Last update date |
| `deleted_at` | `DateTime` | Required | Deletion date |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `metadata` | `Hash of String` | Required | Metadata |
| `pix_key` | `String` | Required | Pix Key |

## Example (as JSON)

```json
{
  "id": "id0",
  "holder_name": "holder_name4",
  "holder_type": "holder_type2",
  "bank": "bank8",
  "branch_number": "branch_number6",
  "branch_check_digit": "branch_check_digit4",
  "account_number": "account_number0",
  "account_check_digit": "account_check_digit6",
  "type": "type0",
  "status": "status8",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "deleted_at": "2016-03-13T12:52:32.123Z",
  "recipient": null,
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "pix_key": "pix_key6"
}
```

