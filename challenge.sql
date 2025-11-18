-- step 1 top 5 customers
SELECT c.first_name, c.last_name, sum(oi.quantity * oi.unit_price)as total_spent
FROM customer c
join order  o on c.id=o.customer_id
join order_items oi on o.id= oi.order_id
group by c.first_name, c.last_name
order by total_spent desc
limit 5;

-- step 2 
SELECT p.category, sum(oi.quantitiy 8 oi.unit_price) as total_revenue
from product p
join order_items oi on p.id = oi.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- task 3 
SELECT e.salary, e.first_name, e.last_name, d.name as department_name
FROM employees employees
join department d on e.department_id =d.id
WHERE e.salary > {
    SELECT avg(salary)
    from employees
    WHERE department_id = e.department_id
}
Order by d.name, e.salary desc;

-- task 4
SELECT c.city, count* as gold_customers
from customers c
where c.loyalty_lvl= 'Gold'
GROUP BY c.city
order BY  gold_customers DESC;
 ahhhhh
