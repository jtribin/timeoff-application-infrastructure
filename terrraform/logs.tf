# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "timeoff_log_group" {
  name              = "/ecs/timeoff-app"
  retention_in_days = 14

  tags = {
    Name = "timeoff-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "timeoff_log_stream" {
  name           = "timeoff-log-stream"
  log_group_name = aws_cloudwatch_log_group.timeoff_log_group.name
}