with source as (
    select * from {{ source('klaviyo', 'klaviyo_event') }}
)

select
    id,
    metric_id,
    profile_id,
    event_properties,
    datetime,
    uuid
from source