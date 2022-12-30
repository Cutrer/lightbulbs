with stg_snes as (select * from {{ ref("stg_snes") }})

select *
from stg_snes
where developer like '%Nintendo%'
