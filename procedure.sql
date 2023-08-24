create or replace procedure calculate (p_price varchar2,p_quantity varchar2) is
v_total_price number;
begin
    v_total_price:=to_number(p_price)*to_number(p_quantity);
    dbms_output.put_line('Total price : '||v_total_price);
exception 
    when value_error then
    dbms_output.put_line('Error: Invalid number format');
    when others then 
    dbms_output.put_line('Oops, Error!'); 
end;
