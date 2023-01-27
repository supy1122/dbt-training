/*
{% macro markup() %} 
(ordersellingprice - ordercostprice)/ordercostprice
{% endmacro %}*/

{% macro markup(ordersellingprice,ordercostprice) %} 
({{ordersellingprice}} - {{ordercostprice}})/{{ordercostprice}}
{% endmacro %}