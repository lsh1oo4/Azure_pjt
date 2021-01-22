resource "azurerm_monitor_autoscale_setting" "user19-auto" {
  name                = "myAutoscaleSetting"
  enabled             = true
  resource_group_name = azurerm_resource_group.user19-admin.name
  location            = azurerm_resource_group.user19-admin.location
  target_resource_id  = azurerm_virtual_machine_scale_set.user19vmss.id

  profile {
    name = "forJuly"

    capacity {
        default = 2
      minimum = 1
      maximum = 3
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user19vmss.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "GreaterThan"
        threshold          = 90
      }

      scale_action {
        direction = "Increase"
        type      = "ChangeCount"
        value     = "2"
        cooldown  = "PT1M"
      }
    }

    rule {
      metric_trigger {
        metric_name        = "Percentage CPU"
        metric_resource_id = azurerm_virtual_machine_scale_set.user19vmss.id
        time_grain         = "PT1M"
        statistic          = "Average"
        time_window        = "PT5M"
        time_aggregation   = "Average"
        operator           = "LessThan"
        threshold          = 10
      }

      scale_action {
        direction = "Decrease"
        type      = "ChangeCount"
        value     = "2"
        cooldown  = "PT1M"
      }
    }

    fixed_date {
      timezone = "Pacific Standard Time"
      start    = "2020-07-01T00:00:00Z"
      end      = "2020-07-31T23:59:59Z"
    }
  }

  notification {
    email {
      send_to_subscription_administrator    = true
      send_to_subscription_co_administrator = true
      custom_emails                         = ["lsh1oo4@naver.com"]
    }
  }
}
