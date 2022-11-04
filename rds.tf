resource "aws_db_instance" "rds-instance" {
  # Engine options
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  name                 = "mydb"
  parameter_group_name = "default.mysql5.7"
 
  # DB instance identifier
  identifier                   = "database-cornerstone"
  username                     = "admin"
  password                     = "qwerty123456"

  # DB instance size
  storage_type                 = "gp2"
  allocated_storage            = 20
  max_allocated_storage        = 30

  # Availity & durability
  #availability_zone           = "us-east-1a"  # if doesn't use multi_az, can choose an AZ (single)
  multi_az                     = true

  # Connectivity
  publicly_accessible          = false
  port                         = 3306

  # Enhanced Monitoring
  #monitoring_interval          = "30"
  #monitoring_role_name         = "RDS-Monitoring-Role-awx"
  #create_monitoring_role       = true

  # Additional configuration
  #parameter_group_name         = "rds-mysql"
  backup_retention_period      = 7
  #backup_window                = 
  copy_tags_to_snapshot        = false
  skip_final_snapshot          = true
  final_snapshot_identifier    = "database-cornerstone"
  

  # Maintenance
  allow_major_version_upgrade  = false
  auto_minor_version_upgrade   = false
  # maintenance_window          =
  apply_immediately            = false 

  # DB deletion protection
  deletion_protection          = false

  tags = {
    Name = "RDS-MySQL-5.5.61-cornerstone"
  }
}