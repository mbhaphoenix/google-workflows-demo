# google-workflows-demo

This repo holds the files created during a live coding demo of [Google Cloud Workflows](https://cloud.google.com/workflows) in action.

`workflow.yaml` holds the source code of the designed workflow. 


## Deploying the workflow


#### Deploying using Google Cloud SDK (gcloud)

Use `deploy.sh` to deploy the workflow.

#### Deploying using terraform: 

`wf_tf.yaml` is a copy of `workflow.yaml` used to deploy a [workflow terraform resource](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/workflows_workflow) using `main.tf` template. 

```
export TF_VAR_project_id=<PROJECT_ID>

terraform init

terraform plan

terraform apply --auto-approve

```

## Running the workflow

Use `run.sh` to deploy the workflow.