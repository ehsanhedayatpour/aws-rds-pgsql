resource "aws_db_instance" "pgsql-db" {
  identifier             = "pgsql"
  db_name                   = "pgsql"
  instance_class         = "db.t2.micro"
  allocated_storage      = 5
  engine                 = "postgres"
  engine_version         = "12"
  skip_final_snapshot    = true
  publicly_accessible    = true
  vpc_security_group_ids = [aws_security_group.pgsql_sg.id]
  username               = "root"
  password               = "admin123"
}

