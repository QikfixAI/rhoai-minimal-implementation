#!/bin/bash

# To update the DSC, setting llamastackoperator to Removed
oc patch dsc default-dsc --type json -p '[{"op":"replace", "path":"/spec/components/llamastackoperator/managementState", "value":"Removed"}]'

# To update the odhdashboardconfig, removing genAiStudio entry
oc patch odhdashboardconfigs/odh-dashboard-config -n redhat-ods-applications --type json -p '[{"op":"remove", "path":"/spec/dashboardConfig/genAiStudio"}]'

