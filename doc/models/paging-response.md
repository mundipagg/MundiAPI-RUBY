
# Paging Response

Object used for returning lists of objects with pagination

## Structure

`PagingResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `total` | `Integer` | Required | Total number of pages |
| `previous` | `String` | Required | Previous page |
| `mnext` | `String` | Required | Next page |

## Example (as JSON)

```json
{
  "total": 10,
  "previous": "previous8",
  "next": "next2"
}
```

