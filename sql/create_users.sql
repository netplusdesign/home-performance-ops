/* add your own admin user */

CREATE USER 'web'@'localhost' IDENTIFIED BY 'test';
    GRANT SELECT ON home_performance_dev.* TO 'web'@'localhost';
