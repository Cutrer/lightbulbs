with
    nes as (select *, 'nes' as console from {{ ref("dim_nes") }}),
    gb as (select *, 'gb' as console from {{ ref("dim_gb") }}),
    snes as (select *, 'snes' as console from {{ ref("dim_snes") }}),

    final as (
        select * from nes
        UNION ALL
        select * from gb
        UNION ALL
        select * from snes
    )

    select * from final