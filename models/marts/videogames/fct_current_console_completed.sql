with
    complete as (select * from {{ ref("stg_current_consoles") }}),

    final as (
        select system, count(*) AS games_completed from complete where completed = 'Yes' group by system
    )

select *
from final
