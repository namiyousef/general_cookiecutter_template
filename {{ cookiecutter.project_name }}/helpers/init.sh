move_project () {

    # required params
    local PROJECT_PATH="$1"
    local MOVE_TO_DIR="$2"

    # inferred vars 
    local project_path_temp="${PROJECT_PATH}_temp"

    mkdir -p $MOVE_TO_DIR
    mv  $PROJECT_PATH $project_path_temp
    ls $project_path_temp/.
    mv  $project_path_temp/* $project_path_temp/.* $MOVE_TO_DIR
    rm -r $project_path_temp
}