resource "google_recaptcha_enterprise_key" "recaptcha_enterprise_keys" {
  for_each = var.recaptcha_enterprise_keys

  display_name    = each.value.display_name
  deletion_policy = each.value.deletion_policy
  labels          = each.value.labels
  project         = each.value.project

  dynamic "android_settings" {
    for_each = each.value.android_settings != null ? [each.value.android_settings] : []
    content {
      allow_all_package_names = android_settings.value.allow_all_package_names
      allowed_package_names   = android_settings.value.allowed_package_names
    }
  }

  dynamic "ios_settings" {
    for_each = each.value.ios_settings != null ? [each.value.ios_settings] : []
    content {
      allow_all_bundle_ids = ios_settings.value.allow_all_bundle_ids
      allowed_bundle_ids   = ios_settings.value.allowed_bundle_ids
    }
  }

  dynamic "testing_options" {
    for_each = each.value.testing_options != null ? [each.value.testing_options] : []
    content {
      testing_challenge = testing_options.value.testing_challenge
      testing_score     = testing_options.value.testing_score
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "waf_settings" {
    for_each = each.value.waf_settings != null ? [each.value.waf_settings] : []
    content {
      waf_feature = waf_settings.value.waf_feature
      waf_service = waf_settings.value.waf_service
    }
  }

  dynamic "web_settings" {
    for_each = each.value.web_settings != null ? [each.value.web_settings] : []
    content {
      allow_all_domains             = web_settings.value.allow_all_domains
      allow_amp_traffic             = web_settings.value.allow_amp_traffic
      allowed_domains               = web_settings.value.allowed_domains
      challenge_security_preference = web_settings.value.challenge_security_preference
      dynamic "challenge_settings" {
        for_each = web_settings.value.challenge_settings != null ? [web_settings.value.challenge_settings] : []
        content {
          dynamic "action_settings" {
            for_each = challenge_settings.value.action_settings != null ? challenge_settings.value.action_settings : []
            content {
              action          = action_settings.value.action
              score_threshold = action_settings.value.score_threshold
            }
          }
          default_settings {
            score_threshold = challenge_settings.value.default_settings.score_threshold
          }
        }
      }
      integration_type = web_settings.value.integration_type
    }
  }
}

