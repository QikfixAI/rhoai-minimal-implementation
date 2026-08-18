#!/bin/bash

# To update the DSC, setting llamastackoperator to Managed
oc patch dsc default-dsc --type json -p '[{"op":"replace", "path":"/spec/components/llamastackoperator/managementState", "value":"Managed"}]'

# To update the odhdashboardconfig, adding the genAiStudio, with true value
oc patch odhdashboardconfigs/odh-dashboard-config -n redhat-ods-applications --type json -p '[{"op":"add", "path":"/spec/dashboardConfig/genAiStudio", "value":true}]'

