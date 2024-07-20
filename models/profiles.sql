with source as (
    select * from {{ source('klaviyo', 'klaviyo_profile') }}
)

select
    id,
    external_id,
    email,
    phone_number,
    first_name,
    last_name,
    title,
    organization,
    properties,
    image,
    created,
    updated,
    location_address1,
    location_address2,
    location_city,
    location_country,
    location_latitude,
    location_longitude,
    location_region,
    location_zip
from source