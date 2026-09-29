#!/bin/bash

# To update the odhdashboardconfig, adding the disableHardwareProfiles, with false value
oc patch odhdashboardconfigs/odh-dashboard-config -n redhat-ods-applications --type json -p '[{"op":"add", "path":"/spec/dashboardConfig/disableHardwareProfiles", "value":true}]'

