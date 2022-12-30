with stg_nes as (select * from {{ ref("stg_nes") }})

select *
from stg_nes
where developer like '%Nintendo%'
