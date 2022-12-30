with
    current_generation as (
        select *
        from
            {{ source('games', 'my_played_games')  }}
        where 
            system in ('Switch', 'PS5','XBox One')
    )

select * from current_generation
