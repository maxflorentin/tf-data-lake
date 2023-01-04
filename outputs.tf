output ec2logs_ids {
  description = "IDs of Linux instances"
  value       = aws_instance.logs.*.id
}

output kinesis_stream_name {
  description = "stream-info"
  value       = aws_kinesis_firehose_delivery_stream.datalogs_stream.*.name
}
