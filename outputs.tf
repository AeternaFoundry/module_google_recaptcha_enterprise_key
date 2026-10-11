output "recaptcha_enterprise_keys_id" {
  description = "Map of id values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no id are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.id if v.id != null && length(v.id) > 0 }
}
output "recaptcha_enterprise_keys_android_settings" {
  description = "Map of android_settings values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no android_settings are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => one(v.android_settings) if v.android_settings != null && length(v.android_settings) > 0 }
}
output "recaptcha_enterprise_keys_create_time" {
  description = "Map of create_time values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no create_time are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "recaptcha_enterprise_keys_deletion_policy" {
  description = "Map of deletion_policy values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no deletion_policy are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "recaptcha_enterprise_keys_display_name" {
  description = "Map of display_name values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no display_name are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "recaptcha_enterprise_keys_effective_labels" {
  description = "Map of effective_labels values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no effective_labels are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.effective_labels if v.effective_labels != null && length(v.effective_labels) > 0 }
}
output "recaptcha_enterprise_keys_ios_settings" {
  description = "Map of ios_settings values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no ios_settings are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => one(v.ios_settings) if v.ios_settings != null && length(v.ios_settings) > 0 }
}
output "recaptcha_enterprise_keys_labels" {
  description = "Map of labels values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no labels are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.labels if v.labels != null && length(v.labels) > 0 }
}
output "recaptcha_enterprise_keys_name" {
  description = "Map of name values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no name are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.name if v.name != null && length(v.name) > 0 }
}
output "recaptcha_enterprise_keys_project" {
  description = "Map of project values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no project are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.project if v.project != null && length(v.project) > 0 }
}
output "recaptcha_enterprise_keys_terraform_labels" {
  description = "Map of terraform_labels values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no terraform_labels are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => v.terraform_labels if v.terraform_labels != null && length(v.terraform_labels) > 0 }
}
output "recaptcha_enterprise_keys_testing_options" {
  description = "Map of testing_options values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no testing_options are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => one(v.testing_options) if v.testing_options != null && length(v.testing_options) > 0 }
}
output "recaptcha_enterprise_keys_waf_settings" {
  description = "Map of waf_settings values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no waf_settings are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => one(v.waf_settings) if v.waf_settings != null && length(v.waf_settings) > 0 }
}
output "recaptcha_enterprise_keys_web_settings" {
  description = "Map of web_settings values across all recaptcha_enterprise_keys, keyed the same as var.recaptcha_enterprise_keys except keys with no web_settings are omitted"
  value       = { for k, v in google_recaptcha_enterprise_key.recaptcha_enterprise_keys : k => one(v.web_settings) if v.web_settings != null && length(v.web_settings) > 0 }
}

