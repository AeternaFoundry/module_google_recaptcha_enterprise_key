variable "recaptcha_enterprise_keys" {
  description = <<EOT
Map of recaptcha_enterprise_keys, attributes below
Required:
    - display_name
Optional:
    - deletion_policy
    - labels
    - project
    - android_settings (block):
        - allow_all_package_names (optional)
        - allowed_package_names (optional)
    - ios_settings (block):
        - allow_all_bundle_ids (optional)
        - allowed_bundle_ids (optional)
    - testing_options (block):
        - testing_challenge (optional)
        - testing_score (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - waf_settings (block):
        - waf_feature (required)
        - waf_service (required)
    - web_settings (block):
        - allow_all_domains (optional)
        - allow_amp_traffic (optional)
        - allowed_domains (optional)
        - challenge_security_preference (optional)
        - challenge_settings (optional, block):
            - action_settings (optional, block):
                - action (required)
                - score_threshold (required)
            - default_settings (required, block):
                - score_threshold (required)
        - integration_type (required)
EOT

  type = map(object({
    display_name    = string
    deletion_policy = optional(string)
    labels          = optional(map(string))
    project         = optional(string)
    android_settings = optional(object({
      allow_all_package_names = optional(bool)
      allowed_package_names   = optional(list(string))
    }))
    ios_settings = optional(object({
      allow_all_bundle_ids = optional(bool)
      allowed_bundle_ids   = optional(list(string))
    }))
    testing_options = optional(object({
      testing_challenge = optional(string)
      testing_score     = optional(number)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    waf_settings = optional(object({
      waf_feature = string
      waf_service = string
    }))
    web_settings = optional(object({
      allow_all_domains             = optional(bool)
      allow_amp_traffic             = optional(bool)
      allowed_domains               = optional(list(string))
      challenge_security_preference = optional(string)
      challenge_settings = optional(object({
        action_settings = optional(list(object({
          action          = string
          score_threshold = number
        })))
        default_settings = object({
          score_threshold = number
        })
      }))
      integration_type = string
    }))
  }))
}

