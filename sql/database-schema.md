# Database Schema

## Database

`qa_training`

## users

| Column     | Type      | Description   |
| ---------- | --------- | ------------- |
| id         | INTEGER   | Primary key   |
| name       | VARCHAR   | User name     |
| email      | VARCHAR   | User email    |
| status     | VARCHAR   | User status   |
| created_at | TIMESTAMP | Creation date |

## products

| Column   | Type    | Description      |
| -------- | ------- | ---------------- |
| id       | INTEGER | Primary key      |
| name     | VARCHAR | Product name     |
| price    | NUMERIC | Product price    |
| category | VARCHAR | Product category |
| stock    | INTEGER | Available stock  |

## orders

| Column     | Type      | Description         |
| ---------- | --------- | ------------------- |
| id         | INTEGER   | Primary key         |
| user_id    | INTEGER   | Reference to users  |
| status     | VARCHAR   | Order status        |
| total      | NUMERIC   | Order total         |
| created_at | TIMESTAMP | Order creation date |

## order_items

| Column     | Type    | Description           |
| ---------- | ------- | --------------------- |
| id         | INTEGER | Primary key           |
| order_id   | INTEGER | Reference to orders   |
| product_id | INTEGER | Reference to products |
| quantity   | INTEGER | Product quantity      |
| price      | NUMERIC | Product price         |

## Relationships

```text
users.id
   ↓
orders.user_id

orders.id
   ↓
order_items.order_id

products.id
   ↓
order_items.product_id
```
