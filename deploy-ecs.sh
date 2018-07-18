SERVICE_NAME='blog-saxophone-backend-service'
CLUSTER_NAME='blog-saxophone-cluster'

function updateTaskDefinition {
  sed -i -r -e "s/backend:([a-zA-Z0-9]+)/backend:$CIRCLE_SHA1/" task-definition.json
}

function registerTask {
  aws ecs register-task-definition --cli-input-json file://$HOME/saxophone_infochart_back/task-definition.json | \
  echo `python -c 'import json,sys; obj=json.load(sys.stdin);print obj["taskDefinition"]["taskDefinitionArn"]'`
}

function updateService {
  aws ecs update-service --service "$SERVICE_NAME" --cluster "$CLUSTER_NAME" --task-definition "$NEW_TASK"
}

updateTaskDefinition
NEW_TASK=`registerTask`
updateService
