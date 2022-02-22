
-- b. please write query that show total of each product

SELECT 
	product_category_name ,count(product_category_name)Total_each_product
FROM public.olist_products_dataset_csv opdc 
group by product_category_name 




-- c. Please write a query that show the total of credit card payment type
SELECT 
	payment_type ,count(payment_type)total_payment_type ,sum(payment_value)total_value_payment_type
FROM public.olist_order_payments_dataset_csv   
group by payment_type  




-- d. Please write a query that show top 3 payment type with ther most order item dataset
select 
	payment_type, count(a.order_id )total_order 
from public.olist_order_items_dataset_csv a inner join

(
	SELECT 
		distinct order_id ,payment_type 
	FROM public.olist_order_payments_dataset_csv   
	--group by payment_type  
)b on a.order_id =b.order_id 
group by payment_type
order by 1
limit 3



-- e.	Please write a query that show the sum of payment value from each payment type which installments is greater than 1

SELECT 
	payment_type ,sum(payment_value)total_value_payment_type
FROM public.olist_order_payments_dataset_csv   
where payment_installments > 1
group by payment_type  
;




