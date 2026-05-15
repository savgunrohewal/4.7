
SELECT
    p.product_name,
    s.supplier_name
FROM products p
JOIN suppliers s
ON p.supplier_id = s.supplier_id;

SELECT
    p.product_name,
    c.category_name
FROM products p
JOIN product_categories pc
ON p.product_id = pc.product_id
JOIN categories c
ON pc.category_id = c.category_id;

SELECT
    p.product_name,
    t.tag_name
FROM products p
JOIN product_tags pt
ON p.product_id = pt.product_id
JOIN tags t
ON pt.tag_id = t.tag_id;
