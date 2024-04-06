resource "aws_db_instance" "my-free-rds-db-instance" {
  allocated_storage        = 20
  engine                   = "postgres"
  engine_version           = "16.1"
  identifier               = "my-free-rds-db-instance"
  instance_class           = "db.t3.micro"
  storage_encrypted        = false
  publicly_accessible      = true
  delete_automated_backups = true
  skip_final_snapshot      = true
  db_name                  = "database_name"
  username                 = "database_username"
  password                 = "database_password"
  apply_immediately        = true
  multi_az                 = false
}
