create table `room-locations`(
    `id`          varchar( 36 ) not null primary key,
    `room-number` int         not null
) ;

create table `rooms`(
    `id`           varchar( 36 ) not null primary key,
    `is-occupied`  tinyint       not null,
    `location-id` varchar( 36 ) not null,

    foreign key ( `location-id` ) references `room-locations`( `id` )
) ;