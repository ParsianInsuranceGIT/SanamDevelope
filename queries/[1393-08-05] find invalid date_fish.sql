select * from tbl_credebit c where c.date_fish is not null and c.amount_long > c.remaining_amount_long and IS_DATE_VALID(c.date_fish) = 0;