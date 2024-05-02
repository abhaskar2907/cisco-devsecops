ansible-playbook -i uc-1-config-compliance/hosts uc-1-config-compliance/playbook.yml -t device_info -e stage="show"

ansible-playbook -i uc-1-config-compliance/hosts uc-1-config-compliance/playbook.yml -t config -e stage="build"

ansible-playbook -i uc-1-config-compliance/hosts uc-1-config-compliance/playbook.yml -t config -e stage="set"

ansible-playbook -i uc-1-config-compliance/hosts uc-1-config-compliance/playbook.yml -t device_info -e stage="get_run"