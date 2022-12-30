with
    gb_cte as (select * from {{ source("games", "gb") }}),

    final as (
        select title, developer, publisher, releasedate_na as release_date
        from gb_cte
        where releasedate_na is not null
    )

    select * from final
