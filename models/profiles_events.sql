with profiles as (
    select * from {{ ref('profiles') }}
),

events as (
    select * from {{ ref('events') }}
)

select
    p.id as profile_id,
    p.external_id,
    p.email,
    p.phone_number,
    p.first_name,
    p.last_name,
    p.title,
    p.organization,
    e.id as event_id,
    e.metric_id,
    e.event_properties,
    e.datetime,
    e.uuid
from profiles p
left join events e
on p.id = e.profile_id