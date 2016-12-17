-- All Trac tickets to convert.
select
    id,
    type,
    owner,
    reporter,
    milestone,
    status,
    resolution,
    summary,
    description,
    time / 1000000 as PosixTime,
    changetime / 1000000 as ModifiedTime,
    value as freshdesk,
    keywords
from ticket
left outer join ticket_custom 
    on ticket_custom.ticket = ticket.id and name = 'freshdesk_ticket'
order
    by id
