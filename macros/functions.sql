{% macro create_margin_rate(revenue, purchase_cost)%}
  ROUND(SAFEDIVIDE(margin,revenue),2)
{% endmacro %}