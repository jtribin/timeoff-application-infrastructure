resource "aws_ecr_repository" "ecr_timeoff_management" {
  name = "timeoff_management"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}