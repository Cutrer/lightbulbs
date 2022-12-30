with stg_gb as (select * from {{ ref("stg_gb") }})

select *
from stg_gb
where developer like '%Nintendo%'
