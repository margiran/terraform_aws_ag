output "link_http" {
  description = "access to the web page"
  value       = "http://${aws_lb.main_lb.dns_name}"
}
