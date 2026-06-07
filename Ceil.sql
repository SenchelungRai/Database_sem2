SELECT gross_amount,
     CEIL(gross_amount) AS final_invoice_amount
FROM customer_orders
WHERE order_id = 2434;
GROSS_AMOUNT    FINAL_INVOICE_AMOUNT
------------    --------------------
268651.8                  268652


SELECT actual_weight_lbs,
     CEIL(actual_weight_lbs) AS rounded_shipping_weight
FROM freight_logs
WHERE shipment_id = 9051;
ACTUAL_WEIGHT_LBS    ROUNDED_SHIPPING_WEIGHT
-----------------    -----------------------
45.21                         46

SELECT recorded_hours,
     CEIL(recorded_hours) AS payable_hours
FROM project_time_logs
WHERE ticket_id = 7712;

RECORDED_HOURS    PAYABLE_HOURS
--------------    -------------
3.1                4


