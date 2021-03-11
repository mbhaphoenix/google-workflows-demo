variable "project_id" {
  type = string
}

 

variable "workflow" {
    type = string
    default = "wf_tf"
}

 

data "local_file" "workflow_file" {
    filename = "${path.module}/${var.workflow}.yaml"
}

 

resource "google_workflows_workflow" "workflow" {
  name          = var.workflow
  project     = var.project_id
  region        = "europe-west4"
  description   = "A workflow example"
  source_contents = data.local_file.workflow_file.content
}