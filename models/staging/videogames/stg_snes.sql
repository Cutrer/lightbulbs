with
    snes_cte as (select * from {{ source("games", "snes") }}),

    final as (
        select title, developer, publisher, releasedate_na as release_date
        from snes_cte
        where releasedate_na is not null
    )

select *
from final
