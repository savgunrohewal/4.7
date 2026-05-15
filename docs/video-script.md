
# Video Explanation Script

Hello everyone,

In this project, I analyzed and normalized an e-commerce database schema.

The original schema had several problems:
- Multiple values stored in one column
- Repeated supplier information
- Transitive dependencies
- Poor separation of entities

These issues caused redundancy and inconsistent updates.

To fix this, I redesigned the schema into separate tables:
- suppliers
- products
- categories
- tags

I also created junction tables:
- product_categories
- product_tags

This allowed proper many-to-many relationships.

I added primary keys, foreign keys, and indexes to improve integrity and performance.

The redesigned schema now follows Third Normal Form and is easier to maintain and scale.

Finally, I updated all queries using JOIN operations to work correctly with the normalized schema.

Thank you.
