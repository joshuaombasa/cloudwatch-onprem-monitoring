resource "aws_cloudwatch_metric_alarm" "high_latency" {
  alarm_name          = "OnPremApp-High-Latency"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "Latency"
  namespace           = "Custom/OnPremApp"
  period              = 60
  statistic           = "Average"
  threshold           = 100
  alarm_description   = "Triggers when latency exceeds 100ms"
  actions_enabled     = true
}
