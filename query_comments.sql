-- All Trac ticket comments to convert.
select
    ticket,
    time / 1000000 as PosixTime,
    author,
    field,
    newvalue
from
    ticket_change
where 
    newvalue <> '' and
    (
        field = 'comment' and newvalue not like 'Milestone % deleted' or
        field = 'status' and newvalue in ('closed','new','reopened','waiting')
    )
order
    by ticket, time, field
