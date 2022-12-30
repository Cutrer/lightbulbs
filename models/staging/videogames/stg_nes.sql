with
    nes_cte as (select * from {{ source("games", "nes") }}),

    final as (
        select
            title, developer, publisher_na as publisher, releasedate_na as release_date
        from nes_cte
        where releasedate_na is not null
    )

select *
from final
