CREATE TABLE energy_minutes
(
    house_id            TINYINT     NOT NULL,
    device_id           TINYINT     NOT NULL,
    date                DATETIME    NOT NULL,
    adjusted_load       DECIMAL(4),
    solar               DECIMAL(4),
    used                DECIMAL(4),
    water_heater        DECIMAL(4),
    ashp                DECIMAL(4),
    water_pump          DECIMAL(4),
    dryer               DECIMAL(4),
    washer              DECIMAL(4),
    dishwasher          DECIMAL(4),
    stove               DECIMAL(4),
    refrigerator        DECIMAL(4),
    living_room         DECIMAL(4),
    aux_heat_bedrooms   DECIMAL(4),
    aux_heat_living     DECIMAL(4),
    study               DECIMAL(4),
    barn                DECIMAL(4),
    basement_west       DECIMAL(4),
    basement_east       DECIMAL(4),
    ventilation         DECIMAL(4),
    ventilation_preheat DECIMAL(4),
    kitchen_recept_rt   DECIMAL(4)
);

CREATE TABLE energy_hourly
(
    house_id            TINYINT     NOT NULL,
    device_id           TINYINT     NOT NULL,
    date                DATETIME    NOT NULL,
    adjusted_load       DECIMAL(4),
    solar               DECIMAL(4),
    used                DECIMAL(4),
    water_heater        DECIMAL(4),
    ashp                DECIMAL(4),
    water_pump          DECIMAL(4),
    dryer               DECIMAL(4),
    washer              DECIMAL(4),
    dishwasher          DECIMAL(4),
    stove               DECIMAL(4),
    refrigerator        DECIMAL(4),
    living_room         DECIMAL(4),
    aux_heat_bedrooms   DECIMAL(4),
    aux_heat_living     DECIMAL(4),
    study               DECIMAL(4),
    barn                DECIMAL(4),
    basement_west       DECIMAL(4),
    basement_east       DECIMAL(4),
    ventilation         DECIMAL(4),
    ventilation_preheat DECIMAL(4),
    kitchen_recept_rt   DECIMAL(4)
);

CREATE TABLE energy_daily
(
    house_id            TINYINT     NOT NULL,
    device_id           TINYINT     NOT NULL,
    date                DATE        NOT NULL,
    adjusted_load       DECIMAL(5,3),
    solar               DECIMAL(5,3),
    used                DECIMAL(5,3),
    water_heater        DECIMAL(5,3),
    ashp                DECIMAL(5,3),
    water_pump          DECIMAL(5,3),
    dryer               DECIMAL(5,3),
    washer              DECIMAL(5,3),
    dishwasher          DECIMAL(5,3),
    stove               DECIMAL(5,3),
    refrigerator        DECIMAL(5,3), 
    living_room         DECIMAL(5,3),
    aux_heat_bedrooms   DECIMAL(5,3),
    aux_heat_living     DECIMAL(5,3),
    study               DECIMAL(5,3),
    barn                DECIMAL(5,3),
    basement_west       DECIMAL(5,3),
    basement_east       DECIMAL(5,3),
    ventilation         DECIMAL(5,3),
    ventilation_preheat DECIMAL(5,3),
    kitchen_recept_rt   DECIMAL(5,3)
);

CREATE TABLE energy_monthly
(
    house_id            TINYINT     NOT NULL,
    device_id           TINYINT     NOT NULL,
    date                DATE        NOT NULL,
    adjusted_load       DECIMAL(7,3),
    solar               DECIMAL(7,3),
    used                DECIMAL(7,3),
    water_heater        DECIMAL(6,3),
    ashp                DECIMAL(6,3),
    water_pump          DECIMAL(5,3),
    dryer               DECIMAL(6,3),
    washer              DECIMAL(5,3),
    dishwasher          DECIMAL(5,3),
    stove               DECIMAL(6,3),
    refrigerator        DECIMAL(6,3), 
    living_room         DECIMAL(6,3),
    aux_heat_bedrooms   DECIMAL(6,3),
    aux_heat_living     DECIMAL(6,3),
    study               DECIMAL(6,3),
    barn                DECIMAL(6,3),
    basement_west       DECIMAL(6,3),
    basement_east       DECIMAL(6,3),
    ventilation         DECIMAL(6,3),
    ventilation_preheat DECIMAL(6,3),
    kitchen_recept_rt   DECIMAL(6,3)
);

CREATE TABLE temperature_hourly
(
    house_id        TINYINT         NOT NULL,
    device_id       TINYINT         NOT NULL,
    date            DATETIME        NOT NULL,
    temperature     DECIMAL(6,3),
    humidity        DECIMAL(6,3)
);

CREATE TABLE hdd_hourly
(
    house_id        TINYINT         NOT NULL,
    date            DATETIME        NOT NULL,
    hdd	            DECIMAL(4,3)
);

CREATE TABLE hdd_daily
(
    house_id        TINYINT         NOT NULL,
    date            DATE            NOT NULL,
    hdd             DECIMAL(6,3)
);

CREATE TABLE hdd_monthly
(
    house_id        TINYINT         NOT NULL,
    date            DATE            NOT NULL,
    hdd             DECIMAL(7,3)
);

CREATE TABLE temperature_daily
(
    house_id        TINYINT         NOT NULL,
    device_id       TINYINT         NOT NULL,
    date            DATE            NOT NULL,
    temperature_min DECIMAL(6,3),
    temperature_max DECIMAL(6,3),
    humidity_min    DECIMAL(6,3),
    humidity_max    DECIMAL(6,3)
);

CREATE TABLE monitor_devices
(
    house_id        TINYINT         NOT NULL,
    device_id       TINYINT         NOT NULL,
    name            VARCHAR(32)     NOT NULL
);

CREATE TABLE houses
(
    house_id        TINYINT         NOT NULL,
    name            VARCHAR(32)     NOT NULL,
    sname           VARCHAR(32)     NOT NULL,
    iga             DECIMAL(8,2),
    ciga            DECIMAL(8,2),
    ega             DECIMAL(8,2)
);

CREATE TABLE limits_hourly
(
    house_id        TINYINT         NOT NULL,
    used_max        DECIMAL(4),
    solar_min       DECIMAL(4),
    outdoor_deg_min DECIMAL(6,3),
    outdoor_deg_max DECIMAL(6,3),
    hdd_max         DECIMAL(4,3),
    start_date      DATETIME,
    end_date        DATETIME
);

CREATE TABLE water_monthly
(
    house_id        TINYINT         NOT NULL,
    device_id       TINYINT         NOT NULL,
    date            DATE            NOT NULL,
    gallons         DECIMAL(7,1)
);

CREATE TABLE estimated_monthly
(
    house_id        TINYINT         NOT NULL,
    date            DATE            NOT NULL,
    solar           DECIMAL(4,0),
    used            DECIMAL(4,0),
    hdd             DECIMAL(4,0),
    water           DECIMAL(4,0)
);

CREATE TABLE circuits
(
    house_id        TINYINT         NOT NULL,
    circuit_id      VARCHAR(32)     NOT NULL,
    name            VARCHAR(32)     NOT NULL,
    description	    VARCHAR(80) 
);