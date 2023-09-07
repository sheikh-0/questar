data "archive_file" "lambda_function_file" {
  type = "zip"
  source_file = "main.js"
  output_path = "hwlambda.zip"
}